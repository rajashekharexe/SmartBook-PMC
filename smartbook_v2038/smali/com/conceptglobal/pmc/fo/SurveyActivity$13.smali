.class Lcom/conceptglobal/pmc/fo/SurveyActivity$13;
.super Ljava/lang/Object;
.source "SurveyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$btnna:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1812
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$13;->val$btnna:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1816
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1400(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1817
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1400(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1818
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$13;->val$btnna:Landroid/widget/Button;

    const v0, -0xbbbbbc

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 1820
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$13;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$1400(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1821
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$13;->val$btnna:Landroid/widget/Button;

    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
