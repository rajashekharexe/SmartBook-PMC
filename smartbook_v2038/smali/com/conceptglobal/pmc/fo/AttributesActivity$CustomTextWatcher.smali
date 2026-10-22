.class Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;
.super Ljava/lang/Object;
.source "AttributesActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTextWatcher"
.end annotation


# instance fields
.field private beforetext:Ljava/lang/String;

.field private editText:Landroid/widget/EditText;

.field private maxvalue:J

.field private minValue:J

.field private obj:Lcom/conceptglobal/pmc/model/AttributeModel;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0

    .line 2179
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2180
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    .line 2181
    iput-wide p5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->maxvalue:J

    .line 2182
    iput-wide p3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->minValue:J

    .line 2183
    iput-object p7, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity$1;)V
    .locals 0

    .line 2171
    invoke-direct/range {p0 .. p7}, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 16

    move-object/from16 v1, p0

    .line 2200
    const-string v2, ""

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 2202
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/conceptglobal/pmc/fo/AttributesActivity;->starttimeMobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$100(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2203
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_StartTimerText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity;Ljava/lang/String;)V

    .line 2204
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 2209
    :cond_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Dropdown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "DemoThresholdAmount"

    if-eqz v0, :cond_1e

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2226
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "DemoAttributeCostFilterValue"

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 2228
    const-string v6, ","

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 2229
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    .line 2230
    :goto_0
    array-length v8, v0

    if-ge v7, v8, :cond_2

    .line 2231
    aget-object v8, v0, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2237
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    if-eqz v0, :cond_5

    .line 2238
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3200()Ljava/util/List;

    move-result-object v0

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2239
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityExpenseAmountQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v7

    .line 2240
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityBrandQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2241
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityBrandIdQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2242
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v10

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityProtocolPlotSizeQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2243
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v11

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityDosageQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 2246
    :try_start_3
    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object v11

    const/16 v12, 0x35d

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2251
    :catch_1
    :try_start_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v11

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v12

    const-string v13, "DemoProductAttributeIDS"

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2252
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 2253
    invoke-virtual {v11, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    .line 2254
    :goto_2
    array-length v12, v6

    if-ge v11, v12, :cond_4

    .line 2255
    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object v12

    aget-object v13, v6, v11

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2256
    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object v12

    aget-object v13, v6, v11

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2257
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3200()Ljava/util/List;

    move-result-object v12

    iget-object v13, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v13}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object v13

    aget-object v14, v6, v11

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

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

    check-cast v12, Landroid/widget/EditText;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2266
    :catch_2
    :cond_4
    :try_start_5
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object v6

    const/16 v8, 0x36f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 2271
    :catch_3
    :try_start_6
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object v6

    const/16 v8, 0x355

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 2275
    :catch_4
    :try_start_7
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2200(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerDemoAmountQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 2276
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v7, v0

    if-le v7, v6, :cond_5

    .line 2278
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_democostexceeds()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity;Ljava/lang/String;)V

    .line 2279
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2280
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3200()Ljava/util/List;

    move-result-object v0

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    return-void

    :catch_5
    nop

    .line 2286
    :cond_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsKeyAttribute()I

    move-result v0

    if-ne v0, v5, :cond_c

    .line 2287
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 2289
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    const-string v6, "0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2290
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2700(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2000()I

    move-result v6

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2700(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getKeyAttributeId(III)I

    move-result v0

    const-string v6, "AttributesActivity"

    if-eqz v0, :cond_9

    .line 2292
    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2294
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2000()I

    move-result v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2700(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v10, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityKeyAttributes(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 2295
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2000()I

    move-result v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2700(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v11, v12}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityKeyAttributes_All(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 2297
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2298
    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-virtual {v11, v8, v2, v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->performFiltering(Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 2300
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2302
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 2303
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2304
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3300(Lcom/conceptglobal/pmc/fo/AttributesActivity;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v8

    .line 2305
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2306
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 2307
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3510(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    .line 2309
    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2310
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3200()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2311
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 2315
    :cond_8
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2316
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2317
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v11

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v12

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    .line 2330
    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 2335
    :cond_9
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2336
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2200(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2000()I

    move-result v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1000(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    move-result v11

    iget-object v12, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v12}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/AttributesActivity;)J

    move-result-wide v12

    invoke-virtual/range {v8 .. v13}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityAttributeQueryUpdated(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 2338
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2339
    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-virtual {v10, v7, v2, v9}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->performFiltering(Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 2341
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2343
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_c

    .line 2344
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 2345
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3300(Lcom/conceptglobal/pmc/fo/AttributesActivity;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v7

    .line 2346
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$700()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2347
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 2348
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3510(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    .line 2350
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2351
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3200()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2352
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    .line 2357
    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2364
    :cond_c
    :goto_8
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v6

    invoke-static {v0, v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3700(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)Ljava/util/List;

    move-result-object v0

    .line 2366
    :try_start_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_d

    .line 2367
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2368
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2369
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3200()Ljava/util/List;

    move-result-object v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    .line 2373
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2376
    :cond_d
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3800(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3800(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 2378
    :try_start_b
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2700(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2000()I

    move-result v7

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getParentAttributeId(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_22

    .line 2379
    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v6

    if-ne v0, v6, :cond_22

    const/4 v6, 0x0

    .line 2380
    :goto_a
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3800(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_22

    .line 2381
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2700(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2000()I

    move-result v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3800(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/conceptglobal/pmc/common/Queries;->getParentAttributeIdDraft(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v0, :cond_f

    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_14

    .line 2386
    :cond_f
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2700(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2000()I

    move-result v9

    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v10

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3800(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/conceptglobal/pmc/common/Queries;->getRuleParentAttrValueId(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v7

    .line 2388
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ConfigurablelookupMaster"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2389
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/conceptglobal/pmc/common/Queries;->getItemKeyByConfigId(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    .line 2391
    :cond_10
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/common/Queries;->getCompanyNameQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2393
    :goto_b
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/16 v12, 0x49

    const/4 v14, 0x2

    const v13, 0x7f100009

    if-nez v9, :cond_16

    iget-object v9, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 2394
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2700(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2000()I

    move-result v15

    iget-object v11, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v11

    invoke-virtual {v9, v15, v11, v7}, Lcom/conceptglobal/pmc/common/Queries;->getOperationType(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2397
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3800(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v7, :cond_e

    .line 2398
    const-string v11, "Visibility"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2400
    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    const/4 v11, 0x0

    :goto_c
    if-ge v11, v7, :cond_e

    .line 2403
    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v15}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 2404
    move-object v10, v15

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_15

    move-object v10, v15

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_15

    .line 2405
    check-cast v15, Landroid/widget/LinearLayout;

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v9, :cond_15

    .line 2408
    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2409
    sget-object v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 2410
    sget-object v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2412
    :cond_11
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v10

    if-ne v10, v14, :cond_13

    .line 2413
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2000()I

    move-result v10

    if-ne v10, v12, :cond_15

    const/16 v10, 0x3c5

    if-ne v9, v10, :cond_15

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v7, :cond_15

    .line 2415
    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v15}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 2416
    check-cast v15, Landroid/widget/LinearLayout;

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v4, 0x3be

    if-ne v15, v4, :cond_12

    .line 2418
    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v15}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    const/16 v12, 0x8

    invoke-virtual {v15, v12}, Landroid/view/View;->setVisibility(I)V

    .line 2419
    sget-object v12, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    const/16 v12, 0x49

    goto :goto_d

    .line 2424
    :cond_13
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2000()I

    move-result v4

    const/16 v10, 0x50

    if-ne v4, v10, :cond_15

    const/16 v4, 0x3c2

    if-ne v9, v4, :cond_15

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v7, :cond_15

    .line 2426
    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2427
    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v12, 0x3c3

    if-ne v10, v12, :cond_14

    .line 2429
    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/16 v15, 0x8

    invoke-virtual {v10, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2430
    sget-object v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_15
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    const/16 v12, 0x49

    goto/16 :goto_c

    .line 2457
    :cond_16
    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3800(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2458
    iget-object v8, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v8, :cond_e

    .line 2461
    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2462
    move-object v11, v10

    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_1c

    move-object v11, v10

    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1c

    .line 2463
    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v7, :cond_1c

    .line 2466
    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2472
    sget-object v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    .line 2473
    sget-object v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2475
    :cond_17
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v10

    if-ne v10, v14, :cond_19

    .line 2476
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2000()I

    move-result v10

    const/16 v12, 0x49

    if-ne v10, v12, :cond_1b

    const/16 v10, 0x3c5

    if-ne v7, v10, :cond_1b

    const/4 v15, 0x0

    :goto_10
    if-ge v15, v8, :cond_1b

    .line 2478
    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2479
    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x3be

    if-ne v10, v11, :cond_18

    .line 2481
    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 2482
    sget-object v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_18
    add-int/lit8 v15, v15, 0x1

    const/16 v10, 0x3c5

    const/16 v11, 0x8

    const/16 v12, 0x49

    goto :goto_10

    :cond_19
    const/16 v11, 0x3be

    .line 2487
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2000()I

    move-result v10

    const/16 v12, 0x50

    if-ne v10, v12, :cond_1b

    const/16 v10, 0x3c2

    if-ne v7, v10, :cond_1b

    const/4 v15, 0x0

    :goto_11
    if-ge v15, v8, :cond_1b

    .line 2489
    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2490
    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x3c3

    if-ne v10, v11, :cond_1a

    .line 2492
    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 2493
    sget-object v10, Lcom/conceptglobal/pmc/fo/AttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_12

    :cond_1a
    const/4 v12, 0x0

    :goto_12
    add-int/lit8 v15, v15, 0x1

    const/16 v10, 0x3c2

    const/16 v11, 0x3be

    const/16 v12, 0x50

    goto :goto_11

    :cond_1b
    const/16 v11, 0x3c3

    const/4 v12, 0x0

    .line 2499
    :try_start_c
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3200()Ljava/util/List;

    move-result-object v10

    iget-object v15, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v15}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 2502
    :catch_9
    :try_start_d
    iget-object v10, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 2503
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_1d

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    instance-of v15, v15, Landroid/widget/EditText;

    if-eqz v15, :cond_1d

    .line 2504
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_13

    :cond_1c
    const/16 v11, 0x3c3

    const/4 v12, 0x0

    :catch_a
    :cond_1d
    :goto_13
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_f

    :goto_14
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    goto/16 :goto_a

    :catch_b
    move-exception v0

    .line 2550
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_17

    .line 2554
    :cond_1e
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Multiselect Dropdown"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2555
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-static {v0, v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3700(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)Ljava/util/List;

    move-result-object v0

    .line 2556
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_22

    .line 2557
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2558
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2559
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$3200()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 2562
    :cond_1f
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TextBoxN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TextBoxND"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_16

    .line 2601
    :cond_20
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TextBox"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2602
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_22

    .line 2603
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getValidationExpression()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2604
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 2605
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2606
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2607
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2608
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->beforetext:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2609
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_17

    .line 2563
    :cond_21
    :goto_16
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 2577
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 2578
    iget-wide v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->maxvalue:J

    long-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_22

    .line 2579
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->beforetext:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2639
    :cond_22
    :goto_17
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    const/16 v4, 0x306

    if-ne v0, v4, :cond_23

    .line 2642
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    .line 2643
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2200(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerDemoAmountQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 2644
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 2645
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v0

    if-le v4, v3, :cond_23

    .line 2647
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_democostexceeds()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity;Ljava/lang/String;)V

    .line 2648
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    return-void

    :catch_c
    move-exception v0

    .line 2653
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 2189
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$CustomTextWatcher;->beforetext:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
