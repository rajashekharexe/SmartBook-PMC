.class Lcom/conceptglobal/pmc/fo/SurveyActivity$8;
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

    .line 1680
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 1683
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1684
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    const p1, 0x7f1000f4

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 1685
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1400(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1400(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1688
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$8;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1400(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
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
