.class Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$10;
.super Ljava/lang/Object;
.source "AudianceFarmerSelectionList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->showRetailerMobileSearchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

.field final synthetic val$dialogLand:Landroid/app/Dialog;

.field final synthetic val$etMobile:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 802
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$10;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$10;->val$etMobile:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$10;->val$dialogLand:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 805
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$10;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 810
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$10;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$10;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->access$900(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 811
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$10;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$10;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->access$1000(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 812
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$10;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$10;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->checkRetailerInTerritory(Ljava/lang/String;)V

    .line 813
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$10;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 815
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$10;->val$etMobile:Landroid/widget/EditText;

    const-string v0, "Invalid Mobile Number"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 818
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$10;->val$etMobile:Landroid/widget/EditText;

    const-string v0, "Please enter 10 digit mobile number"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
