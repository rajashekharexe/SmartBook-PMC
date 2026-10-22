.class Lcom/conceptglobal/pmc/fo/UserFormActivity$6;
.super Ljava/lang/Object;
.source "UserFormActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/UserFormActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 550
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$500(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 551
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$500(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$500(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 553
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$600(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$600(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$600(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    move v1, v0

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$700(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Landroid/widget/EditText;

    move-result-object v0

    add-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%.2f"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

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
