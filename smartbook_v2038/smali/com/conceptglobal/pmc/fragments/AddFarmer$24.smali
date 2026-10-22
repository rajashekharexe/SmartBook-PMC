.class Lcom/conceptglobal/pmc/fragments/AddFarmer$24;
.super Ljava/lang/Object;
.source "AddFarmer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer;->showMobileSearchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

.field final synthetic val$dialogLand:Landroid/app/Dialog;

.field final synthetic val$etMobile:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2907
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$24;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$24;->val$etMobile:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$24;->val$dialogLand:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2910
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$24;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 2915
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$24;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$24;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$3700(Lcom/conceptglobal/pmc/fragments/AddFarmer;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2916
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$24;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$24;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->checkFarmerInTerritory(Ljava/lang/String;)V

    .line 2917
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$24;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 2919
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$24;->val$etMobile:Landroid/widget/EditText;

    const-string v0, "Please enter 10 digit mobile number"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
