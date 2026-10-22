.class Lcom/conceptglobal/pmc/fragments/ValueChainPartner$23;
.super Ljava/lang/Object;
.source "ValueChainPartner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->showMobileSearchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

.field final synthetic val$dialogLand:Landroid/app/Dialog;

.field final synthetic val$etMobile:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4794
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$23;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$23;->val$etMobile:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$23;->val$dialogLand:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 4797
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$23;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 4802
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$23;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$23;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3800(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4803
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$23;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$23;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->checkFarmerInTerritory(Ljava/lang/String;)V

    .line 4804
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$23;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 4806
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$23;->val$etMobile:Landroid/widget/EditText;

    const-string v0, "Please enter 10 digit mobile number"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
