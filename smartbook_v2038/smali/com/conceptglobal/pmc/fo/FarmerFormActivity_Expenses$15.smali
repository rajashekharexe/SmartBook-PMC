.class Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$15;
.super Ljava/lang/Object;
.source "FarmerFormActivity_Expenses.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

.field final synthetic val$btnna:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1989
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$15;->val$btnna:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1993
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$2100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1994
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$2100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1995
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$15;->val$btnna:Landroid/widget/Button;

    const v0, -0xbbbbbc

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 1997
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$15;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$2100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1998
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$15;->val$btnna:Landroid/widget/Button;

    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
