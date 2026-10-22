.class Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;
.super Ljava/lang/Object;
.source "MarketAttributesActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0

    .line 1040
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1041
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    .line 1042
    iput-wide p5, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->maxvalue:J

    .line 1043
    iput-wide p3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->minValue:J

    .line 1044
    iput-object p7, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$1;)V
    .locals 0

    .line 1032
    invoke-direct/range {p0 .. p7}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10

    .line 1061
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1062
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dropdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_7

    .line 1063
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsKeyAttribute()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 1064
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 1066
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1067
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$400(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$400(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getKeyAttributeId(III)I

    move-result p1

    const-string v0, "MarketAttributes"

    if-eqz p1, :cond_3

    .line 1069
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1071
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$400(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityKeyAttributes(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1072
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$400(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityKeyAttributes_All(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1074
    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

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

    .line 1075
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-virtual {v6, v3, v1, v5}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->performFiltering(Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1077
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1079
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1080
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1081
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v1

    .line 1082
    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1083
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$700(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1084
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$810(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    .line 1086
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1087
    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1088
    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1100()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1092
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1093
    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$700(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1097
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 1102
    :cond_3
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1200(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1400(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityAttributeQueryUpdated(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1105
    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

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

    .line 1106
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-virtual {v5, v2, v1, v4}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->performFiltering(Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1108
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1110
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 1111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1112
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$600(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v1

    .line 1113
    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$500()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1114
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$700(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1115
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$810(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    .line 1117
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1118
    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1119
    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 1124
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 1130
    :cond_6
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$400(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1500(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    .line 1132
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1600(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V

    .line 1134
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 1135
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$700(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1700(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1136
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1802(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;I)I

    .line 1137
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$400(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1902(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1138
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$2000(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V

    goto :goto_6

    .line 1140
    :cond_7
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TextBoxN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TextBoxND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    .line 1149
    :cond_8
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextBox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextArea"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto :goto_6

    .line 1141
    :cond_9
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1142
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 1143
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->maxvalue:J

    long-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_a

    .line 1144
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->beforetext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_6
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1050
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$CustomTextWatcher;->beforetext:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
