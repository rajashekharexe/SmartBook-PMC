.class Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;
.super Ljava/lang/Object;
.source "AttributesActivity_Expenses.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

.field final synthetic val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Lcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1327
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 1330
    const-string v0, ""

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1331
    :goto_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1332
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1334
    instance-of v5, v4, Landroid/widget/EditText;

    if-eqz v5, :cond_2

    .line 1335
    move-object v7, v4

    check-cast v7, Landroid/widget/EditText;

    .line 1336
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v1, v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1202(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1337
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1302(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Ljava/lang/String;)Ljava/lang/String;

    .line 1338
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-static {v1, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1402(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1341
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1502(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;I)I

    .line 1343
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1600(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v4, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->transId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$900()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/conceptglobal/pmc/common/Queries;->getPairIDSA(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1344
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1345
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1502(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1348
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1350
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDisplayType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDisplayType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1500(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDisplayType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-static {v0, v7, p1, v1, v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1700(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    goto :goto_2

    .line 1353
    :cond_1
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDisplayType()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$8;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1800(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Ljava/util/HashMap;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_2
    return-void
.end method
