.class Lcom/conceptglobal/pmc/RegistrationActivity$1;
.super Ljava/lang/Object;
.source "RegistrationActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/RegistrationActivity;->checkValidations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/RegistrationActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/RegistrationActivity;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$1;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 386
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 387
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$1;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$000(Lcom/conceptglobal/pmc/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity$1;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$100(Lcom/conceptglobal/pmc/RegistrationActivity;)I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 389
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$1;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$000(Lcom/conceptglobal/pmc/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 391
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$1;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$000(Lcom/conceptglobal/pmc/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_haveToEnterErrorText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$1;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$100(Lcom/conceptglobal/pmc/RegistrationActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_charactersInPWError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

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
