.class Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;
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

    .line 1666
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 1669
    const-string v2, " "

    const-string v3, ""

    instance-of v0, v6, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1670
    move-object v0, v6

    check-cast v0, Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    const/high16 v0, 0x7f100000

    .line 1674
    invoke-virtual {v6, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    const v4, 0x7f100007

    .line 1675
    invoke-virtual {v6, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1676
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 1681
    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1682
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1684
    :try_start_0
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1685
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1688
    :cond_1
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v8, 0x7f100001

    const-string v9, " = "

    const/4 v10, 0x1

    if-eqz v0, :cond_3

    .line 1689
    :try_start_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1690
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v0

    if-ne v0, v10, :cond_3

    .line 1691
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

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

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1694
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    move-object v0, v3

    .line 1700
    :goto_1
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v11

    if-eqz v11, :cond_5

    .line 1701
    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1702
    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v11

    if-ne v11, v10, :cond_5

    .line 1703
    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v13

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v13}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1706
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_5
    :goto_2
    move-object v11, v3

    .line 1712
    :goto_3
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v12

    if-eqz v12, :cond_7

    .line 1713
    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1714
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsMandatory()I

    move-result v8

    if-ne v8, v10, :cond_7

    .line 1715
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterTheToast()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1718
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1600(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_7
    :goto_4
    move-object v4, v3

    .line 1722
    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1723
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1725
    :cond_8
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, " and "

    if-nez v8, :cond_9

    .line 1727
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1728
    :cond_9
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    :cond_a
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 1737
    const-string v4, "ChildAttributeFragment"

    const/4 v8, 0x0

    invoke-static {v4, v0, v8}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1738
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    :cond_b
    :goto_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1700(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x3

    const v9, 0x7f1101b9

    if-eqz v0, :cond_c

    .line 1742
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$800(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v10

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v10

    .line 1743
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v14

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1100(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/lang/String;

    move-result-object v15

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$900(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result v16

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1800(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result v17

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v18

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1742
    invoke-virtual/range {v10 .. v19}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValuesDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    .line 1743
    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1900(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    move-object v2, v0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 1744
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1745
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 1746
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_7

    .line 1747
    :cond_c
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$2000(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_d

    .line 1748
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$800(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v10

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v10

    .line 1749
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v14

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1100(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/lang/String;

    move-result-object v15

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$900(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result v16

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1800(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)I

    move-result v17

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v18

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1748
    invoke-virtual/range {v10 .. v19}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValuesDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;

    .line 1749
    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;->access$1900(Lcom/conceptglobal/pmc/fo/AudianceChildAttributesFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    move-object v2, v0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 1750
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1751
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 1752
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_d
    :goto_7
    return-void
.end method
