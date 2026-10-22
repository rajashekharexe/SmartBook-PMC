.class Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;
.super Ljava/lang/Object;
.source "AttributesActivity_FBF.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0

    .line 1293
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1294
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->editText:Landroid/widget/EditText;

    .line 1295
    iput-wide p5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->maxvalue:J

    .line 1296
    iput-wide p3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->minValue:J

    .line 1297
    iput-object p7, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$1;)V
    .locals 0

    .line 1285
    invoke-direct/range {p0 .. p7}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11

    .line 1314
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1315
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dropdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_7

    .line 1316
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsKeyAttribute()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 1317
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 1319
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1320
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$300(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)I

    move-result v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getKeyAttributeId(III)I

    move-result p1

    const-string v0, "AttributesActivity_FBF"

    if-eqz p1, :cond_3

    .line 1322
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1324
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$300(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)I

    move-result v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getPMCFBFActivityKeyAttributes(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCFBFActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1325
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$300(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)I

    move-result v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getPMCFBFActivityKeyAttributes(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCFBFActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1327
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

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

    .line 1328
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-virtual {v6, v3, v1, v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->performFiltering(Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1330
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1332
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1333
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1334
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1100(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v3

    .line 1335
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1336
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1200(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1337
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1310(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)I

    .line 1339
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1400(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1340
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1500()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1341
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$100()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1345
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

    .line 1346
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v6

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1200(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1360
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1365
    :cond_3
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1367
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$500(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$300(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)I

    move-result v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1600(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1700(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityAttributeQueryUpdatedFBF(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1369
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

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

    .line 1370
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-virtual {v5, v2, v1, v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->performFiltering(Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1372
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1374
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1375
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1376
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1100(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v2

    .line 1377
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1378
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1200(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1379
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1310(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)I

    .line 1381
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1400(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1382
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1500()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1383
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$100()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 1388
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1395
    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1800(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;I)Ljava/util/List;

    move-result-object p1

    .line 1396
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 1397
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1398
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$100()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

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

    .line 1399
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1500()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

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

    .line 1402
    :cond_7
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Multiselect Dropdown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1403
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1800(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;I)Ljava/util/List;

    move-result-object p1

    .line 1404
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 1405
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1406
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$100()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

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

    .line 1407
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1500()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF;)Ljava/util/Map;

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

    .line 1410
    :cond_8
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TextBoxN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TextBoxND"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_8

    .line 1461
    :cond_9
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextBox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextArea"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto :goto_9

    .line 1411
    :cond_a
    :goto_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1425
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1428
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->maxvalue:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    .line 1429
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1436
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 1437
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->maxvalue:J

    long-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c

    .line 1438
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->editText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->beforetext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_9
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1303
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_FBF$CustomTextWatcher;->beforetext:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
