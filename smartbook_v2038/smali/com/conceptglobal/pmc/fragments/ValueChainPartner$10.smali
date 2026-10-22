.class Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;
.super Ljava/lang/Object;
.source "ValueChainPartner.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 1835
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1846
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1400(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 1847
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1400(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 1848
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1600(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/EditText;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_2

    .line 1852
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1700(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1400(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getCropSales(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1853
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1854
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1600(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1856
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1600(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1858
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    iget p1, p1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->isextrasales:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 1859
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1700(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1400(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getCropSales1(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1860
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1861
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1800(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1863
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1800(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1869
    :try_start_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1870
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1600(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1873
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$10;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
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
