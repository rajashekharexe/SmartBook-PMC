.class Lcom/conceptglobal/pmc/fo/SurveyActivity$11;
.super Ljava/lang/Object;
.source "SurveyActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SurveyActivity;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V
    .locals 0

    .line 1728
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 1739
    const-string p1, "SurveyActivity"

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/TextView;

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

    .line 1740
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1741
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1742
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1400(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_2

    .line 1746
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$2100(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1600(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$2000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/TextView;

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

    .line 1747
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1748
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1750
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;

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

    .line 1753
    :try_start_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1754
    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1757
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$2100(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1600(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$2000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1700(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/TextView;

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

    .line 1759
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1400(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 1762
    :try_start_3
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1400(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getEMPTY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1763
    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1766
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1800(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/lang/String;

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
