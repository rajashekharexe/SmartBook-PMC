.class Lcom/conceptglobal/pmc/registration/DraftList$11;
.super Ljava/lang/Object;
.source "DraftList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/registration/DraftList;->showRetailerMobileSearchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/registration/DraftList;

.field final synthetic val$dialogLand:Landroid/app/Dialog;

.field final synthetic val$etGstNumber:Landroid/widget/EditText;

.field final synthetic val$etMobile:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/registration/DraftList;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 947
    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iput-object p2, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etMobile:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etGstNumber:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$dialogLand:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 950
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 992
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/registration/DraftList;->access$2200(Lcom/conceptglobal/pmc/registration/DraftList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/registration/DraftList;->access$2300(Lcom/conceptglobal/pmc/registration/DraftList;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 995
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etGstNumber:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etGstNumber:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/registration/DraftList;->isValidPANNo(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 999
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etGstNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/registration/DraftList;->checkIsRetailerMobileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etGstNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/registration/DraftList;->checkisMfmsExistOrNot(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1000
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etGstNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/registration/DraftList;->checkIsRetailerMobileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1001
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etGstNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/registration/DraftList;->checkRetailerInTerritory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1002
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etGstNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/registration/DraftList;->checkisMfmsExistOrNot(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1003
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etGstNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/registration/DraftList;->checkGSTExistOrNot(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1006
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etGstNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/registration/DraftList;->checkRetailerInTerritory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_3

    .line 997
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etGstNumber:Landroid/widget/EditText;

    const-string v0, "Please enter valid PAN"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 993
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$11;->val$etMobile:Landroid/widget/EditText;

    const-string v0, "Please enter 10 digit valid mobile number"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method
