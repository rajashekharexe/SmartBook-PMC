.class Lcom/conceptglobal/pmc/fo/AttributesActivity$16;
.super Ljava/lang/Object;
.source "AttributesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V
    .locals 0

    .line 3202
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    .line 3205
    const-string v12, ""

    .line 0
    const-string v2, "\'"

    .line 3205
    sget-object v3, Lcom/conceptglobal/pmc/fo/AttributesActivity;->starttimeMobile:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$100(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3206
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_StartTimerText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity;Ljava/lang/String;)V

    return-void

    .line 3209
    :cond_0
    instance-of v3, v7, Landroid/widget/EditText;

    if-eqz v3, :cond_1

    .line 3210
    move-object v3, v7

    check-cast v3, Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 3213
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 3214
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 3215
    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    .line 3219
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 3220
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 3225
    :try_start_0
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v15, 0x7f1101b9

    const/4 v8, 0x1

    const-string v9, " "

    if-eqz v5, :cond_b

    :try_start_1
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 3228
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v10, "Please select "

    if-eqz v5, :cond_3

    .line 3231
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v5

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    if-eqz v5, :cond_2

    .line 3232
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    if-ne v5, v8, :cond_3

    .line 3233
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    .line 3234
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    .line 3240
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3200()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    :cond_3
    move-object v5, v12

    .line 3244
    :goto_0
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v6

    if-eqz v6, :cond_5

    .line 3247
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v6

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    if-eqz v6, :cond_4

    .line 3248
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v6

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    if-ne v6, v8, :cond_5

    .line 3249
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    .line 3250
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    .line 3256
    :cond_4
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3200()Ljava/util/List;

    move-result-object v6

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    :cond_5
    move-object/from16 v22, v12

    .line 3260
    :goto_1
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v6

    if-eqz v6, :cond_7

    .line 3263
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v6

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    if-eqz v6, :cond_6

    .line 3264
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v6

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    if-ne v6, v8, :cond_7

    .line 3265
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    .line 3266
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    .line 3272
    :cond_6
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3200()Ljava/util/List;

    move-result-object v6

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    :cond_7
    move-object/from16 v23, v12

    .line 3276
    :goto_2
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDynamicCondition()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDynamicCondition()Ljava/lang/String;

    move-result-object v6

    const-string v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    .line 3277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2200(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_8
    move-object/from16 v21, v5

    .line 3279
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v17

    .line 3280
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v24

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2200(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/lang/String;

    move-result-object v25

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2000()I

    move-result v26

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1000(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    move-result v27

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v28

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/AttributesActivity;)J

    move-result-wide v30

    .line 3279
    invoke-virtual/range {v17 .. v31}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValuesDynamicWithSourceQry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    .line 3283
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    iget-object v2, v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    iget-object v2, v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_3

    .line 3286
    :cond_9
    new-instance v14, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    iget-object v5, v4, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$4000(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    move-result v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3287
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

    .line 3288
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3289
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3200()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v9

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 3290
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v10

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2000()I

    move-result v11

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v16

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

    .line 3291
    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3292
    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->show()V

    .line 3293
    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_c

    .line 3284
    :cond_a
    :goto_3
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$500(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/content/Context;

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

    .line 3298
    :cond_b
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v2

    if-eqz v2, :cond_c

    .line 3299
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 3302
    :cond_c
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v5, " IN ( "

    const-string v6, " ) "

    if-eqz v2, :cond_e

    .line 3303
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v2

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    if-eqz v2, :cond_d

    .line 3304
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v2

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    if-ne v2, v8, :cond_e

    .line 3305
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v2

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

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

    .line 3308
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3200()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    :cond_e
    :goto_4
    move-object v2, v12

    .line 3314
    :goto_5
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute2()I

    move-result v10

    if-eqz v10, :cond_10

    .line 3315
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    if-eqz v10, :cond_f

    .line 3316
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v5

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    if-ne v5, v8, :cond_10

    .line 3317
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v5

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

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

    .line 3320
    :cond_f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v11

    iget-object v14, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v14}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3200()Ljava/util/List;

    move-result-object v5

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    :cond_10
    :goto_6
    move-object v5, v12

    .line 3326
    :goto_7
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute3()I

    move-result v10

    if-eqz v10, :cond_12

    .line 3327
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    if-eqz v10, :cond_11

    .line 3328
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v6

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    if-ne v6, v8, :cond_12

    .line 3329
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v6

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

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

    .line 3332
    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3200()Ljava/util/List;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

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

    :cond_12
    :goto_8
    move-object v4, v12

    .line 3337
    :goto_9
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 3338
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 3340
    :cond_13
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3341
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v8, " and "

    if-nez v6, :cond_14

    .line 3342
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3343
    :cond_14
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 3344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3345
    :cond_15
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 3346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3351
    :cond_16
    :goto_a
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v18

    .line 3352
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValueField()Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeDisplayField()Ljava/lang/String;

    move-result-object v20

    .line 3353
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeLookupKey()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v22

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    .line 3354
    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2200(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2000()I

    move-result v24

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1000(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    move-result v25

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v26

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 3351
    invoke-virtual/range {v18 .. v27}, Lcom/conceptglobal/pmc/common/Queries;->gettingYesorNoDropdownValuesDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    .line 3357
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    iget-object v2, v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    if-eqz v2, :cond_18

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    iget-object v2, v2, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_b

    .line 3361
    :cond_17
    new-instance v14, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    iget-object v5, v4, Lcom/conceptglobal/pmc/fo/AttributesActivity;->brandsList:Ljava/util/List;

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    .line 3362
    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$4000(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

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

    .line 3363
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3200()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v9

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 3364
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getMaxLength()I

    move-result v10

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2000()I

    move-result v11

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v15

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

    .line 3365
    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const v3, 0x7f1101b9

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3366
    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->show()V

    .line 3367
    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_c

    .line 3358
    :cond_18
    :goto_b
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$16;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$500(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/content/Context;

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

    .line 3378
    const-string v3, "AttributesActivity"

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3379
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3380
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    return-void
.end method
