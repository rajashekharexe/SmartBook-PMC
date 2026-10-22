.class Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;
.super Ljava/lang/Object;
.source "AttributesTableFarmatFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0

    .line 2303
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2304
    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->editText:Landroid/widget/EditText;

    .line 2305
    iput-wide p5, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->maxvalue:J

    .line 2306
    iput-wide p3, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->minValue:J

    .line 2307
    iput-object p7, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;)V
    .locals 0

    .line 2294
    invoke-direct/range {p0 .. p7}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 2326
    const-string v0, ""

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 2328
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

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$2600(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2329
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_StartTimerText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$2700(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Ljava/lang/String;)V

    .line 2330
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2336
    :catch_0
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->editText:Landroid/widget/EditText;

    const v2, 0x7f100007

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2337
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Dropdown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const v3, 0x7f100001

    if-eqz v2, :cond_1

    .line 2338
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    invoke-static {p1, v2}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$2800(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;I)Ljava/util/List;

    move-result-object p1

    .line 2339
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 2340
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2341
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$1200(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2342
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$1200(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v3, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 2347
    :cond_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Multiselect Dropdown"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2348
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v2

    invoke-static {p1, v2}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$2800(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;I)Ljava/util/List;

    move-result-object p1

    .line 2349
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 2350
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2351
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$1200(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2352
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$1200(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v3, v0}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 2355
    :cond_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextBoxN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextBoxND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2356
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2357
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 2358
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->maxvalue:J

    long-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    .line 2360
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->editText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->beforetext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 2367
    const-string v0, "ChildAttributeFragment"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 2315
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$CustomTextWatcher;->beforetext:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
