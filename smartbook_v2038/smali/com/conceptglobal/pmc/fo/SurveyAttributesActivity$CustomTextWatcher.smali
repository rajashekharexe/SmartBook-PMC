.class Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;
.super Ljava/lang/Object;
.source "SurveyAttributesActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0

    .line 1320
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1321
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    .line 1322
    iput-wide p5, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->maxvalue:J

    .line 1323
    iput-wide p3, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->minValue:J

    .line 1324
    iput-object p7, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$1;)V
    .locals 0

    .line 1312
    invoke-direct/range {p0 .. p7}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 12

    .line 1341
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1342
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dropdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_f

    .line 1343
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsKeyAttribute()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 1344
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 1346
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1347
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    move-result v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {p1, v0, v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getKeyAttributeId(III)I

    move-result p1

    const-string v0, "SurveyAttributesActivity"

    if-eqz p1, :cond_3

    .line 1349
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityKeyAttributes(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1352
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v7

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityKeyAttributes_All(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1354
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1355
    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-virtual {v7, v4, v1, v6}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->performFiltering(Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1357
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1359
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1360
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1361
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1100(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v4

    .line 1362
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1363
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1200(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1364
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1310(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    .line 1366
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1400(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1367
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1368
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$100()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1372
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1373
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1374
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1200(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1387
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1392
    :cond_3
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1393
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$500(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1600(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    move-result v7

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityAttributeQueryUpdated(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1395
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1396
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-virtual {v6, v3, v1, v5}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->performFiltering(Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1398
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1400
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 1401
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1402
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1100(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v3

    .line 1403
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1000()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1404
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1200(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1405
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1310(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    .line 1407
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1400(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1408
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1409
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$100()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 1414
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1421
    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1800(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;I)Ljava/util/List;

    move-result-object p1

    .line 1423
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1424
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1425
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$100()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1426
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    .line 1430
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1433
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$2000(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$2000(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_14

    .line 1435
    :try_start_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getParentAttributeId(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_14

    .line 1436
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    if-ne p1, v0, :cond_14

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1437
    :goto_7
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$2000(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_14

    .line 1438
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$2000(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getParentAttributeIdDraft(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v4

    if-eq v4, p1, :cond_8

    goto/16 :goto_b

    .line 1443
    :cond_8
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$2000(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getRuleParentAttrValueId(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v4

    .line 1445
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeSource()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ConfigurablelookupMaster"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1446
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/conceptglobal/pmc/common/Queries;->getItemKeyByConfigId(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 1448
    :cond_9
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getCompanyNameQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1450
    :goto_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const v7, 0x7f100009

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1451
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-object v8, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$300(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)I

    move-result v8

    iget-object v9, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v9

    invoke-virtual {v6, v8, v9, v4}, Lcom/conceptglobal/pmc/common/Queries;->getOperationType(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1454
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$2000(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v4, :cond_e

    .line 1455
    const-string v8, "Visibility"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1457
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1200(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v4, :cond_e

    .line 1460
    iget-object v9, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1200(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1461
    move-object v10, v9

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_a

    move-object v10, v9

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 1462
    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v6, :cond_a

    .line 1465
    iget-object v9, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1200(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1466
    sget-object v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1467
    sget-object v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 1489
    :cond_b
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$2000(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1490
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1200(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v6, :cond_e

    .line 1493
    iget-object v9, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1200(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1494
    move-object v10, v9

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_d

    move-object v10, v9

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 1495
    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v5, :cond_d

    .line 1498
    iget-object v9, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1200(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1504
    sget-object v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 1505
    sget-object v9, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->visibiltyGoneIds:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1508
    :cond_c
    :try_start_4
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v10}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1511
    :catch_3
    :try_start_5
    iget-object v9, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v9}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1200(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1512
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v10, v10, Landroid/widget/EditText;

    if-eqz v10, :cond_d

    .line 1513
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_a

    :cond_e
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :catch_5
    move-exception p1

    .line 1559
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e

    .line 1563
    :cond_f
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Multiselect Dropdown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1564
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1800(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;I)Ljava/util/List;

    move-result-object p1

    .line 1565
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 1566
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1567
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$100()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

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

    .line 1568
    invoke-static {}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1500()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity;)Ljava/util/Map;

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

    goto :goto_c

    .line 1571
    :cond_10
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TextBoxN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TextBoxND"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_d

    .line 1622
    :cond_11
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextBox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextArea"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto :goto_e

    .line 1572
    :cond_12
    :goto_d
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1586
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1589
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->maxvalue:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    .line 1590
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1597
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 1598
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->maxvalue:J

    long-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_14

    .line 1599
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->editText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->beforetext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_e
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1330
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyAttributesActivity$CustomTextWatcher;->beforetext:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
