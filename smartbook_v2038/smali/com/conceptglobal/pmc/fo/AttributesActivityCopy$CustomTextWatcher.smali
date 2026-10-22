.class Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;
.super Ljava/lang/Object;
.source "AttributesActivityCopy.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0

    .line 1277
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1278
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->editText:Landroid/widget/EditText;

    .line 1279
    iput-wide p5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->maxvalue:J

    .line 1280
    iput-wide p3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->minValue:J

    .line 1281
    iput-object p7, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$1;)V
    .locals 0

    .line 1269
    invoke-direct/range {p0 .. p7}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Landroid/widget/EditText;JJLcom/conceptglobal/pmc/model/AttributeModel;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11

    .line 1298
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1299
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dropdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_7

    .line 1300
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getIsKeyAttribute()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 1301
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->setAttributeValue(Ljava/lang/String;)V

    .line 1303
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1304
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$900(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$300(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)I

    move-result v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$900(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getKeyAttributeId(III)I

    move-result p1

    const-string v0, "AttributesActivity"

    if-eqz p1, :cond_3

    .line 1306
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1308
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$300(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)I

    move-result v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$900(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityKeyAttributes(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1309
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$300(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)I

    move-result v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$900(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getDropdownDisplayField(Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityKeyAttributes_All(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1311
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1000()Ljava/util/List;

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

    .line 1312
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-virtual {v6, v3, v1, v5}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->performFiltering(Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1314
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1316
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1317
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1318
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1000()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1100(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v3

    .line 1319
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1000()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1320
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1200(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1321
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1310(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)I

    .line 1323
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1400(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1324
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1500()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1325
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$100()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1329
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

    .line 1330
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1331
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v6

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeValue()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1200(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1344
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1349
    :cond_3
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1350
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$500(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$300(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)I

    move-result v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1600(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1700(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/conceptglobal/pmc/common/Queries;->getPMCActivityAttributeQueryUpdated(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPMCActivityAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1352
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1000()Ljava/util/List;

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

    .line 1353
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-virtual {v5, v2, v1, v4}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->performFiltering(Ljava/util/List;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1355
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1357
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1358
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1359
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1000()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1100(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;Ljava/util/List;Lcom/conceptglobal/pmc/model/AttributeModel;)I

    move-result v2

    .line 1360
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1361
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1200(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1362
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1310(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)I

    .line 1364
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1400(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1365
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1500()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1366
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$100()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 1371
    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1378
    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1800(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;I)Ljava/util/List;

    move-result-object p1

    .line 1379
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 1380
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1381
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$100()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Ljava/util/Map;

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

    .line 1382
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1500()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Ljava/util/Map;

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

    .line 1385
    :cond_7
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Multiselect Dropdown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1386
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1800(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;I)Ljava/util/List;

    move-result-object p1

    .line 1387
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 1388
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1389
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$100()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Ljava/util/Map;

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

    .line 1390
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1500()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivityCopy;)Ljava/util/Map;

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

    .line 1393
    :cond_8
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TextBoxN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TextBoxND"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_8

    .line 1444
    :cond_9
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextBox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextArea"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto :goto_9

    .line 1394
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

    .line 1408
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->obj:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getControlType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1411
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->maxvalue:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    .line 1412
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1419
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 1420
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->maxvalue:J

    long-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c

    .line 1421
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->editText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->beforetext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_9
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1287
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivityCopy$CustomTextWatcher;->beforetext:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
