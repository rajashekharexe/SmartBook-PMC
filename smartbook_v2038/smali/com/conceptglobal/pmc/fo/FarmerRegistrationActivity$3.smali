.class Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$3;
.super Ljava/lang/Object;
.source "FarmerRegistrationActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->setFilters()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 117
    const-string p2, ""

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 118
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 119
    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;

    invoke-static {p3}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->access$300(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)Landroid/widget/EditText;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    rsub-int/lit8 p1, p1, 0x64

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;->access$300(Lcom/conceptglobal/pmc/fo/FarmerRegistrationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
