.class Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;
.super Ljava/lang/Object;
.source "AttributesDynmicTableViewActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0

    .line 1321
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1322
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    .line 1323
    iput-wide p5, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->maxvalue:J

    .line 1324
    iput-wide p3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->minValue:J

    .line 1325
    iput-object p7, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$1;)V
    .locals 0

    .line 1313
    invoke-direct/range {p0 .. p7}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11

    .line 1342
    const-string v0, ""

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1344
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->starttimeMobile:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1345
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_StartTimerText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$900(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;Ljava/lang/String;)V

    .line 1346
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 1351
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dropdown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1352
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsKeyAttribute()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 1353
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 1355
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object p1

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1356
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1000(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$300(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1000(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getKeyAttributeId(III)I

    move-result p1

    const-string v1, "AttributesActivity"

    if-eqz p1, :cond_4

    .line 1358
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1360
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$300(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1000(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityKeyAttributes(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1361
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$300(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1000(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityKeyAttributes_All(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1363
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1364
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-virtual {v6, v3, v0, v5}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->performFiltering(Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1366
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1368
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1369
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1370
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1200(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v3

    .line 1371
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1372
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1300(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1373
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1410(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)I

    .line 1375
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1500(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1376
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1600()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1377
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1700()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1381
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1382
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1383
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v6

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1300(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1396
    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1401
    :cond_4
    :try_start_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1402
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$500(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$300(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1800(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityAttributeQueryUpdated(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1404
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1405
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-virtual {v5, v2, v0, v4}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->performFiltering(Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1407
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1409
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 1410
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1411
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1200(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v2

    .line 1412
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1100()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1413
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1300(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1414
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1410(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)I

    .line 1416
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1500(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1417
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1600()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1418
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1700()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 1423
    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1430
    :cond_7
    :goto_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2000(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;I)Ljava/util/List;

    move-result-object p1

    .line 1431
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 1432
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1433
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1700()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

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

    .line 1434
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1600()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

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

    goto :goto_6

    .line 1437
    :cond_8
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Multiselect Dropdown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1438
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2000(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;I)Ljava/util/List;

    move-result-object p1

    .line 1439
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 1440
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1441
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1700()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

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

    .line 1442
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$1600()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)Ljava/util/Map;

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

    goto :goto_7

    .line 1445
    :cond_9
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextBoxN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextBoxND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_8

    .line 1484
    :cond_a
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextBox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextArea"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto :goto_9

    .line 1446
    :cond_b
    :goto_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1460
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 1461
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->maxvalue:J

    long-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c

    .line 1462
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->beforetext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_9
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1331
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$CustomTextWatcher;->beforetext:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
