.class Lcom/conceptglobal/pmc/registration/DraftList$5;
.super Ljava/lang/Object;
.source "DraftList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/registration/DraftList;->showMobileSearchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/registration/DraftList;

.field final synthetic val$dialogLand:Landroid/app/Dialog;

.field final synthetic val$etMobile:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/registration/DraftList;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 693
    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$5;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iput-object p2, p0, Lcom/conceptglobal/pmc/registration/DraftList$5;->val$etMobile:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/conceptglobal/pmc/registration/DraftList$5;->val$dialogLand:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 696
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$5;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 701
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$5;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$5;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/registration/DraftList;->access$2200(Lcom/conceptglobal/pmc/registration/DraftList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 702
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$5;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$5;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/registration/DraftList;->access$2300(Lcom/conceptglobal/pmc/registration/DraftList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 703
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$5;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$5;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/registration/DraftList;->checkFarmerInTerritory(Ljava/lang/String;)V

    .line 704
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$5;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 706
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$5;->val$etMobile:Landroid/widget/EditText;

    const-string v0, "Invalid Mobile Number"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 709
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$5;->val$etMobile:Landroid/widget/EditText;

    const-string v0, "Enter 10 Digit Mobile Number "

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
