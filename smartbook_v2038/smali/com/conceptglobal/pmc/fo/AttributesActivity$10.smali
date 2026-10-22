.class Lcom/conceptglobal/pmc/fo/AttributesActivity$10;
.super Ljava/lang/Object;
.source "AttributesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

.field final synthetic val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Lcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1831
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 1834
    const-string v0, ""

    sget-object v1, Lcom/conceptglobal/pmc/fo/AttributesActivity;->starttimeMobile:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$100(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1835
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_StartTimerText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$200(Lcom/conceptglobal/pmc/fo/AttributesActivity;Ljava/lang/String;)V

    return-void

    .line 1838
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1839
    :goto_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1840
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1842
    instance-of v5, v4, Landroid/widget/EditText;

    if-eqz v5, :cond_3

    .line 1843
    move-object v7, v4

    check-cast v7, Landroid/widget/EditText;

    .line 1844
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v1, v7}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2302(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1845
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2402(Lcom/conceptglobal/pmc/fo/AttributesActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1846
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-static {v1, v3}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2502(Lcom/conceptglobal/pmc/fo/AttributesActivity;Lcom/conceptglobal/pmc/model/AttributeModel;)Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 1849
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2602(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)I

    .line 1851
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2700(Lcom/conceptglobal/pmc/fo/AttributesActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$900(Lcom/conceptglobal/pmc/fo/AttributesActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2000()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/conceptglobal/pmc/common/Queries;->getPairIDSA(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1852
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1853
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2602(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1856
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1858
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDisplayType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDisplayType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2600(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1859
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDisplayType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-static {v0, v7, p1, v1, v2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2800(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;)V

    goto :goto_2

    .line 1861
    :cond_2
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getDisplayType()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$10;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2900(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Ljava/util/HashMap;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_2
    return-void
.end method
