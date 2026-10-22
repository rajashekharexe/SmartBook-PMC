.class Lcom/conceptglobal/pmc/fragments/AddFarmer$5;
.super Ljava/lang/Object;
.source "AddFarmer.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field beforeDistrict:Ljava/lang/String;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$5;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$5;->beforeDistrict:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 675
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$5;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$900(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$5;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$1000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$5;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$1100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$5;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$1200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 667
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$5;->beforeDistrict:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
