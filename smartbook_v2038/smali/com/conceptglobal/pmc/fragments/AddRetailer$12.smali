.class Lcom/conceptglobal/pmc/fragments/AddRetailer$12;
.super Ljava/lang/Object;
.source "AddRetailer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddRetailer;->showAddCropSalesDialog(Ljava/lang/String;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 2172
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$12;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 2175
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$12;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 2177
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$12;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iget v0, v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isextrasales:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    const v2, 0x7f1101b9

    const-string v3, " "

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 2178
    :try_start_1
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$12;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$12;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$12;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cropFilterText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->gettingDropdownValues(I)Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$12;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;

    move-result-object v10

    move-object v5, v0

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 2179
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2180
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 2181
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_0

    .line 2183
    :cond_0
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$12;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$12;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$12;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cropFilterText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->gettingDropdownValues(I)Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$12;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;

    move-result-object v8

    move-object v3, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 2184
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2185
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 2186
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2190
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$12;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$1500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
