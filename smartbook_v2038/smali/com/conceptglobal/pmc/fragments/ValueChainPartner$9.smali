.class Lcom/conceptglobal/pmc/fragments/ValueChainPartner$9;
.super Ljava/lang/Object;
.source "ValueChainPartner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->showAddCropSalesDialog(Ljava/lang/String;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V
    .locals 0

    .line 1812
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$9;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 1815
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$9;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$000(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 1817
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$9;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    iget v0, v0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isextrasales:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    const v2, 0x7f1101b9

    const-string v3, " "

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 1818
    :try_start_1
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$9;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$000(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/content/Context;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$9;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$9;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$9;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1400(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/TextView;

    move-result-object v10

    move-object v5, v0

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 1819
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1820
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 1821
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_0

    .line 1823
    :cond_0
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$9;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$000(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$9;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$9;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

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

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$9;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1400(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/TextView;

    move-result-object v8

    move-object v3, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 1824
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1825
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 1826
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1830
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$9;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
