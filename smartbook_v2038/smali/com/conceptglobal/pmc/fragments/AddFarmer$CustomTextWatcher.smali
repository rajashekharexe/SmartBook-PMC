.class Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;
.super Ljava/lang/Object;
.source "AddFarmer.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTextWatcher"
.end annotation


# instance fields
.field private beforetext:Ljava/lang/String;

.field private editText:Landroid/widget/EditText;

.field private obj:Lcom/conceptglobal/pmc/model/DynamicFields;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/widget/EditText;Lcom/conceptglobal/pmc/model/DynamicFields;)V
    .locals 0

    .line 5090
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5091
    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->editText:Landroid/widget/EditText;

    .line 5092
    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/DynamicFields;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/widget/EditText;Lcom/conceptglobal/pmc/model/DynamicFields;Lcom/conceptglobal/pmc/fragments/AddFarmer$1;)V
    .locals 0

    .line 5084
    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/widget/EditText;Lcom/conceptglobal/pmc/model/DynamicFields;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11

    .line 5109
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->editText:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 5110
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DynamicFields;->getControlType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Dropdown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 5112
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$6800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$6800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 5114
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$6900(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getParentAttributeId(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_a

    .line 5115
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v0

    if-ne p1, v0, :cond_a

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 5116
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$6800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 5117
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$6900(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$6800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getIsValidChild(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9

    .line 5119
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$6900(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$6800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getRuleParentAttrValueId(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 5120
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/conceptglobal/pmc/common/Queries;->getItemKeyByConfigId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5121
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const v4, 0x7f100009

    const/4 v5, 0x1

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5122
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$6900(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/DynamicFields;->getColumnId()I

    move-result v7

    invoke-virtual {v3, v6, v7, v1}, Lcom/conceptglobal/pmc/common/Queries;->getOperationType(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5125
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$6800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v1, :cond_9

    .line 5126
    const-string v6, "Visibility"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5128
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_1

    .line 5131
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5132
    move-object v8, v7

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    move-object v8, v7

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 5133
    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v3, :cond_0

    .line 5136
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5137
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5138
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5142
    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_9

    .line 5144
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5145
    move-object v8, v7

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_2

    move-object v8, v7

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 5146
    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v3, :cond_2

    .line 5149
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5150
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5151
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 5159
    :cond_3
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$6800(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 5160
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v6, 0x0

    :goto_3
    const/16 v7, 0x8

    .line 5162
    const-string v8, ""

    if-ge v6, v3, :cond_6

    .line 5163
    :try_start_1
    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 5164
    move-object v10, v9

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_5

    move-object v10, v9

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 5165
    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v2, :cond_5

    .line 5168
    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5174
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 5175
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 5178
    :cond_4
    :try_start_2
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$1500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 5182
    :catch_0
    :try_start_3
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 5183
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v9, v9, Landroid/widget/EditText;

    if-eqz v9, :cond_5

    .line 5184
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 5194
    :cond_6
    :try_start_4
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v3, :cond_9

    .line 5196
    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 5197
    move-object v10, v9

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_8

    move-object v10, v9

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 5198
    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v2, :cond_8

    .line 5201
    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5207
    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 5208
    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 5212
    :cond_7
    :try_start_5
    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$1500(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 5216
    :catch_2
    :try_start_6
    iget-object v9, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 5217
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v10, v10, Landroid/widget/EditText;

    if-eqz v10, :cond_8

    .line 5218
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_4
    move-exception p1

    .line 5232
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 5098
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$CustomTextWatcher;->beforetext:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
