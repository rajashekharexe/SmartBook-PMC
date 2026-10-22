.class Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;
.super Ljava/lang/Object;
.source "ChildAttributesFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0

    .line 2003
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2004
    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->editText:Landroid/widget/EditText;

    .line 2005
    iput-wide p5, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->maxvalue:J

    .line 2006
    iput-wide p3, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->minValue:J

    .line 2007
    iput-object p7, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$1;)V
    .locals 0

    .line 1994
    invoke-direct/range {p0 .. p7}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 2026
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 2028
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->editText:Landroid/widget/EditText;

    const v1, 0x7f100007

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2029
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dropdown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x7f100001

    const-string v3, ""

    if-eqz v1, :cond_0

    .line 2030
    :try_start_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$2900(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)Ljava/util/List;

    move-result-object p1

    .line 2031
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2032
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2033
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2034
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 2039
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Multiselect Dropdown"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2040
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$2900(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;I)Ljava/util/List;

    move-result-object p1

    .line 2041
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2042
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2043
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2044
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;->access$1500(Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 2047
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextBoxN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextBoxND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2048
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2049
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 2050
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->maxvalue:J

    long-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 2052
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->editText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->beforetext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2059
    const-string v0, "ChildAttributeFragment"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 2015
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ChildAttributesFragment$CustomTextWatcher;->beforetext:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
