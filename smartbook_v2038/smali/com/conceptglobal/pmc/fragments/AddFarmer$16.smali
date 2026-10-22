.class Lcom/conceptglobal/pmc/fragments/AddFarmer$16;
.super Ljava/lang/Object;
.source "AddFarmer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

.field final synthetic val$btnna:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2158
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$16;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$16;->val$btnna:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2161
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$16;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$1700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$16;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2162
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$16;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$1700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$16;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2163
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$16;->val$btnna:Landroid/widget/Button;

    const v0, -0xbbbbbc

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 2165
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$16;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$1700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2166
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$16;->val$btnna:Landroid/widget/Button;

    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
