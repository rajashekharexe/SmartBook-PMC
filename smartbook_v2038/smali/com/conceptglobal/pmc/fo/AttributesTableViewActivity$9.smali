.class Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;
.super Ljava/lang/Object;
.source "AttributesTableViewActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->setTextChangeListener(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

.field final synthetic val$mEntryEdt:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1439
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->val$mEntryEdt:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10

    .line 1452
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 1454
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1200()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1455
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1200()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1456
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v2

    if-lez v2, :cond_3

    .line 1457
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->val$mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1458
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->val$mEntryEdt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 1459
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1300(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getChildAttributeCount(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getChildAttributeCountValue(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 1462
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getSourceQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1600()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1500(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getFilterAttribute1()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1463
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1700(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v3

    const/16 v5, 0x2b8

    if-ne v3, v5, :cond_0

    .line 1464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1470
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1471
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v4

    const-string v5, "ISSELFASSIGN"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1472
    const-string v4, "ParentAttributeId"

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1473
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)J

    move-result-wide v4

    const-string v6, "TRANSID"

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1474
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$2000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v4

    const-string v5, "ActivityAssignmentId"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1475
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$2100(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v4

    const-string v5, "SEGMENTID"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1476
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$2200(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v4

    const-string v5, "Count"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1477
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pairId"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$900(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v4

    const-string v5, "AssignmentId"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1480
    const-string v4, "FirstDropDownDataQry"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYACTIVITYID()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1482
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYISPLANNED()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$2300(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1483
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyIsMba()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$2400(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1485
    const-string v2, "CropId"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1700(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Lcom/conceptglobal/pmc/model/AttributeModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDisplayRows()I

    move-result v2

    const-string v4, "DisplayRows"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1490
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$2000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v7

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsChildActivityFromTable(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 1491
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$000(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$800(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)J

    move-result-wide v7

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsChildActivityFromTableSA(Ljava/lang/String;IJI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1493
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1495
    :goto_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "fragment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1497
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$2500()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1498
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$2500()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1500
    :cond_1
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1502
    :cond_2
    new-instance v2, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;-><init>()V

    .line 1503
    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1508
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1509
    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$2500()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
