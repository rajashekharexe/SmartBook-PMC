.class Lcom/conceptglobal/pmc/fo/MBAActivity$14;
.super Ljava/lang/Object;
.source "MBAActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/MBAActivity;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

.field final synthetic val$btnna:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/MBAActivity;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 851
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$14;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$14;->val$btnna:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 855
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$14;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1300(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$14;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 856
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$14;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1300(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$14;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 857
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$14;->val$btnna:Landroid/widget/Button;

    const v0, -0xbbbbbc

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 859
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$14;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1300(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 860
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$14;->val$btnna:Landroid/widget/Button;

    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
