.class Lcom/conceptglobal/pmc/fragments/AddRetailer$27;
.super Ljava/lang/Object;
.source "AddRetailer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddRetailer;->showMobileSearchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

.field final synthetic val$dialogLand:Landroid/app/Dialog;

.field final synthetic val$etMobile:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5622
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$27;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$27;->val$etMobile:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$27;->val$dialogLand:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 5625
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$27;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 5630
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$27;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$27;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$6100(Lcom/conceptglobal/pmc/fragments/AddRetailer;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5631
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$27;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$27;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->checkFarmerInTerritory(Ljava/lang/String;)V

    .line 5632
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$27;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 5634
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$27;->val$etMobile:Landroid/widget/EditText;

    const-string v0, "Please enter 10 digit mobile number"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
