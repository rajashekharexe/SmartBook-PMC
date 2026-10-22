.class Lcom/conceptglobal/pmc/fo/MBAActivity$9;
.super Ljava/lang/Object;
.source "MBAActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 722
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 724
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    const p1, 0x7f1000f4

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 725
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1300(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1300(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 729
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$9;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1300(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
