.class Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;
.super Ljava/lang/Object;
.source "AttributesActivity_Expenses.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTextWatcher"
.end annotation


# instance fields
.field private beforetext:Ljava/lang/String;

.field cumulativeTotal:I

.field private editText:Landroid/widget/EditText;

.field private maxvalue:J

.field private minValue:J

.field private obj:Lcom/conceptglobal/pmc/model/AttributeModel;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0

    .line 1763
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1761
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->cumulativeTotal:I

    .line 1764
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->editText:Landroid/widget/EditText;

    .line 1765
    iput-wide p5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->maxvalue:J

    .line 1766
    iput-wide p3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->minValue:J

    .line 1767
    iput-object p7, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$1;)V
    .locals 0

    .line 1754
    invoke-direct/range {p0 .. p7}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11

    .line 1784
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1785
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dropdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_8

    .line 1786
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsKeyAttribute()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 1787
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 1789
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1790
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1600(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$900()I

    move-result v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1600(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getKeyAttributeId(III)I

    move-result p1

    const-string v0, "AttributesActivity"

    if-eqz p1, :cond_3

    .line 1792
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1794
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$900()I

    move-result v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1600(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityKeyAttributes(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1795
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$900()I

    move-result v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1600(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityKeyAttributes_All(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1797
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1798
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-virtual {v6, v3, v1, v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->performFiltering(Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1800
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1802
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1803
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1804
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v3

    .line 1805
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1806
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2300(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1807
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2410(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)I

    .line 1809
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2500(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1810
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2600()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1811
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1815
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1816
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1817
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v6

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2300(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1830
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1835
    :cond_3
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1836
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1100(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$900()I

    move-result v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2700(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)I

    move-result v6

    sget-wide v7, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->transId:J

    invoke-virtual/range {v3 .. v8}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityAttributeQueryUpdated(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1838
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1839
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-virtual {v5, v2, v1, v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->performFiltering(Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1841
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1843
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1844
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1845
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v2

    .line 1846
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1847
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2300(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1848
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2410(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)I

    .line 1850
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2500(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1851
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2600()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1852
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 1857
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1864
    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2800(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;I)Ljava/util/List;

    move-result-object p1

    .line 1865
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1866
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1867
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1868
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2600()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1872
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2900(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2900(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 1874
    :try_start_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1600(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$900()I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$3000(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getVisibilityType(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 1875
    const-string v0, "Visibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1876
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$3000(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result p1

    .line 1878
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2300(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_c

    :catch_2
    move-exception p1

    .line 1881
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 1885
    :cond_8
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Multiselect Dropdown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1886
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2800(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;I)Ljava/util/List;

    move-result-object p1

    .line 1887
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 1888
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1889
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1890
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$2600()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1894
    :cond_9
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TextBoxN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TextBoxND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_8

    .line 1935
    :cond_a
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextBox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1936
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 1937
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getValidationExpression()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1938
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1939
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1940
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 1941
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_f

    .line 1942
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->editText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->beforetext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1943
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_c

    .line 1895
    :cond_b
    :goto_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    .line 1899
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v3, "EXPTOTALSUM"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    move-exception v1

    .line 1901
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    :goto_9
    const/4 v2, 0x0

    .line 1903
    :goto_a
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 1904
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$100()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1905
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 1906
    const-string v5, "Total"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :try_start_4
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    if-eq v3, v1, :cond_c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1909
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    add-int/2addr v2, v3

    goto :goto_b

    .line 1914
    :catch_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Invalid number format: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1918
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Total sum: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Sum"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 1922
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_e

    .line 1923
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 1924
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$300()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_e

    .line 1926
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1930
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 1931
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->maxvalue:J

    long-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_f

    .line 1932
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->editText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->beforetext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    :goto_c
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1773
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$CustomTextWatcher;->beforetext:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
