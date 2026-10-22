.class Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;
.super Ljava/lang/Object;
.source "FarmerFormActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V
    .locals 0

    .line 1924
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 1935
    const-string p1, "FarmerFormActivity"

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1936
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1937
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/EditText;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1938
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_2

    .line 1942
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getCropAcreagesForCrop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1943
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1944
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1946
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1949
    :try_start_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1950
    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1953
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDosFromCrop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1955
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 1958
    :try_start_3
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1959
    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1962
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$12;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
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
