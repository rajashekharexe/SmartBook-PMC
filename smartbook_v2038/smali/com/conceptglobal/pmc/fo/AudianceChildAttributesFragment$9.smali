.class Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;
.super Ljava/lang/Object;
.source "AudianceChildAttributesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)V
    .locals 0

    .line 1762
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    .line 1765
    const-string v2, "."

    const-string v3, "ChildAttributeFragment"

    const-string v4, " "

    const-string v5, ""

    instance-of v0, v7, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1766
    move-object v0, v7

    check-cast v0, Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    const/high16 v0, 0x7f100000

    .line 1768
    invoke-virtual {v7, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const v8, 0x7f100007

    .line 1769
    invoke-virtual {v7, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1770
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v10

    .line 1771
    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->brandsList:Ljava/util/List;

    .line 1775
    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1776
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1778
    :try_start_0
    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1779
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v6

    move/from16 v17, v10

    goto/16 :goto_8

    .line 1782
    :cond_1
    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v14, " ) "

    const-string v13, " IN (  "

    if-eqz v0, :cond_3

    .line 1783
    :try_start_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1784
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v0

    const/4 v15, 0x1

    if-ne v0, v15, :cond_3

    .line 1785
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v17, v10

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move/from16 v17, v10

    .line 1788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    const v10, 0x7f100001

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    move/from16 v17, v10

    goto/16 :goto_6

    :cond_3
    move/from16 v17, v10

    :goto_0
    move-object v0, v5

    .line 1794
    :goto_1
    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v7

    if-eqz v7, :cond_5

    .line 1795
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1796
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_5

    .line 1797
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v15

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v18, v6

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    move/from16 v18, v6

    .line 1800
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    const v10, 0x7f100001

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    move/from16 v18, v6

    :goto_2
    move-object v6, v5

    .line 1806
    :goto_3
    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v7

    if-eqz v7, :cond_7

    .line 1807
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1808
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_7

    .line 1809
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v10

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1812
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    const v10, 0x7f100001

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_7
    :goto_4
    move-object v7, v5

    .line 1816
    :goto_5
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1817
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1819
    :cond_8
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v10, " and "

    if-nez v8, :cond_9

    .line 1821
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1822
    :cond_9
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    :cond_a
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    :goto_6
    move/from16 v18, v6

    goto :goto_7

    :catch_3
    move-exception v0

    move/from16 v18, v6

    move/from16 v17, v10

    :goto_7
    const/4 v6, 0x0

    .line 1830
    invoke-static {v3, v0, v6}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1831
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    :cond_b
    :goto_8
    :try_start_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v19

    .line 1836
    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v23

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1100(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/lang/String;

    move-result-object v24

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$900(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result v25

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1800(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result v26

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v27

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$2100(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v18

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1835
    invoke-virtual/range {v19 .. v29}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValuesDynamic_PairId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->brandsList:Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    .line 1839
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1840
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1843
    :goto_9
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->brandsList:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->brandsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_a

    .line 1847
    :cond_c
    new-instance v0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    iget-object v5, v2, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->brandsList:Ljava/util/List;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$2200(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/widget/EditText;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$800(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v9

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$900(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result v10

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1700(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/List;

    move-result-object v2

    move/from16 v4, v17

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

    .line 1848
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const v3, 0x7f1101b9

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1849
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->show()V

    .line 1850
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_b

    .line 1844
    :cond_d
    :goto_a
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$9;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$800(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Landroid/content/Context;

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

    :goto_b
    return-void
.end method
