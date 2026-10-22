.class Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;
.super Ljava/lang/Object;
.source "AttributesTableViewActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0

    .line 1705
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1706
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    .line 1707
    iput-wide p5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->maxvalue:J

    .line 1708
    iput-wide p3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->minValue:J

    .line 1709
    iput-object p7, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$1;)V
    .locals 0

    .line 1697
    invoke-direct/range {p0 .. p7}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 13

    .line 1726
    const-string v0, ""

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1728
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->starttimeMobile:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$2600(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1729
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_StartTimerText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$2700(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Ljava/lang/String;)V

    .line 1730
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 1735
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dropdown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    .line 1750
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    const/16 v3, 0x365

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    const/16 v3, 0x376

    if-ne v2, v3, :cond_4

    .line 1751
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1600()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1500(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 1752
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityExpenseAmountQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 1753
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/conceptglobal/pmc/common/Queries;->getDemoActivityProtocolPlotSizeQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1759
    :try_start_2
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$2800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/Map;

    move-result-object v5

    const/16 v6, 0x35d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1765
    :catch_1
    :try_start_3
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$2800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/Map;

    move-result-object v5

    const/16 v6, 0x36f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1788
    :catch_2
    :try_start_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerDemoAmountQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v4

    .line 1789
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "DemoThresholdAmount"

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1792
    :try_start_5
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    const-string v8, "SkipDemoIdForThresholdCalculation"

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1793
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 1794
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 1795
    :goto_0
    array-length v8, v6

    if-ge v7, v8, :cond_3

    .line 1796
    aget-object v8, v6, v7

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_3
    nop

    :cond_3
    add-int/2addr v3, v4

    if-le v3, v5, :cond_4

    .line 1807
    :try_start_6
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_democostexceeds()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$2700(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Ljava/lang/String;)V

    .line 1808
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1809
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1600()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1500(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    return-void

    :catch_4
    nop

    .line 1816
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsKeyAttribute()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 1817
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 1819
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object p1

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1820
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v2

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    invoke-virtual {p1, v2, v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getKeyAttributeId(III)I

    move-result p1

    const-string v2, "AttributesActivity"

    if-eqz p1, :cond_8

    .line 1822
    :try_start_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1824
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v7

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityKeyAttributes(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1825
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v7

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v8

    iget-object v9, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v8

    iget-object v9, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityKeyAttributes_All(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1827
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1200()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1828
    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-virtual {v8, v5, v0, v7}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->performFiltering(Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1830
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1832
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 1833
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1834
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1200()Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$2900(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v5

    .line 1835
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1200()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1836
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1837
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3110(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    .line 1839
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3200(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1840
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1600()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1841
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3300()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1845
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1846
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1200()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1847
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v8

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v9

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    .line 1860
    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1865
    :cond_8
    :try_start_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1866
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v7

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$2000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v8

    iget-object v9, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)J

    move-result-wide v9

    invoke-virtual/range {v5 .. v10}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityAttributeQueryUpdated(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1868
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1200()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1869
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-virtual {v7, v4, v0, v6}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->performFiltering(Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 1871
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1873
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 1874
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1875
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1200()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$2900(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v4

    .line 1876
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1200()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1877
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1878
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3110(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    .line 1880
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3200(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1881
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1600()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1882
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3300()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_6

    :catch_6
    move-exception p1

    .line 1887
    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1894
    :cond_b
    :goto_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    invoke-static {p1, v2}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;I)Ljava/util/List;

    move-result-object p1

    .line 1895
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 1896
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1897
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3300()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1500(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1898
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1600()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1500(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1902
    :cond_c
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3500(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3500(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_15

    .line 1904
    :try_start_9
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getParentAttributeId(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_15

    .line 1905
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    if-ne p1, v2, :cond_15

    .line 1906
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getRuleParentAttrValueId(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    .line 1907
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1600()Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1500(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

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

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_e

    .line 1908
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v2

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1600()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1500(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

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

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getOperationType(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1909
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1600()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1500(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getRuleAttrValue(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-eqz p1, :cond_15

    .line 1910
    const-string v2, "Visibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1913
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, p1, :cond_15

    .line 1916
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1917
    move-object v5, v4

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_d

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1919
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1920
    sget-object v4, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1921
    sget-object v4, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1928
    :cond_e
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getRuleAttributeId(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    .line 1929
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    :goto_a
    if-ge v1, v2, :cond_15

    .line 1932
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1933
    move-object v5, v4

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_10

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1935
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1936
    sget-object v4, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1937
    sget-object v4, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 1939
    :cond_f
    :try_start_a
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1940
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/EditText;

    if-eqz v5, :cond_10

    .line 1941
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :catch_7
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :catch_8
    move-exception p1

    .line 1951
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d

    .line 1954
    :cond_11
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Multiselect Dropdown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1955
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;I)Ljava/util/List;

    move-result-object p1

    .line 1956
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 1957
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1958
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$3300()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1500(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1959
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1600()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1500(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 1962
    :cond_12
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextBoxN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextBoxND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_c

    .line 2001
    :cond_13
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextBox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextArea"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto :goto_d

    .line 1963
    :cond_14
    :goto_c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1977
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 1978
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->maxvalue:J

    long-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_15

    .line 1979
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->beforetext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    :goto_d
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1715
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$CustomTextWatcher;->beforetext:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
