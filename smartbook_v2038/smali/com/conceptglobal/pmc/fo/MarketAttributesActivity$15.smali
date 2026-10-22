.class Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;
.super Ljava/lang/Object;
.source "MarketAttributesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V
    .locals 0

    .line 1929
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 1934
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1700(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1935
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1936
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1937
    instance-of v3, v2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    .line 1938
    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    .line 1940
    :goto_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1941
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1942
    instance-of v5, v4, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    .line 1943
    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    .line 1945
    :goto_2
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1946
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1947
    instance-of v7, v6, Landroid/widget/EditText;

    if-eqz v7, :cond_1

    .line 1948
    check-cast v6, Landroid/widget/EditText;

    .line 1949
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$3500(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v6}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1950
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$3500(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v6}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$3500(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v6}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1953
    :cond_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$3500(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v6}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1964
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$3500(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const-string v1, "MarketAttributes"

    if-lez p1, :cond_9

    const/4 p1, 0x0

    .line 1965
    :goto_4
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$3600(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v2

    if-ge p1, v2, :cond_9

    .line 1966
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$3700(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1967
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$3700(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->cloneList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const/4 v2, 0x0

    .line 1968
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 1969
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$3500(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1970
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$3800(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "."

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$3800(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_5

    .line 1972
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$3800(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->performFiltering(Ljava/util/List;Ljava/lang/String;I)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v4

    .line 1973
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDetailsId()I

    move-result v6

    if-eqz v6, :cond_5

    .line 1974
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDetailsId()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->setDetailsId(I)V

    .line 1977
    :cond_5
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v4

    const-string v6, "DropDown"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1978
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    mul-int v7, v7, p1

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_6

    .line 1980
    :cond_6
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$3500(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 1983
    :goto_6
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->setSequenceId(Ljava/lang/String;)V

    .line 1984
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->setChildLevelId(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 1987
    :cond_8
    const-string v2, "dddd"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$3700(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "fmndsbfsdbf"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1200(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v5

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$3900(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v6

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$2400(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v8

    add-int/lit8 v9, p1, 0x1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$4000(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v10

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1400(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)J

    move-result-wide v11

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1300(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)I

    move-result v13

    const/4 v7, 0x1

    invoke-static/range {v3 .. v13}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsWithSequenceId(Ljava/util/List;Ljava/lang/String;IIIIIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v2

    .line 1992
    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1993
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_4

    .line 1997
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$3500(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$1600(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;)V

    .line 2004
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity$15;->this$0:Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;->access$3502(Lcom/conceptglobal/pmc/fo/MarketAttributesActivity;Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method
