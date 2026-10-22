.class Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$2;
.super Ljava/lang/Object;
.source "OTPVerificationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$2;->this$0:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 83
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$2;->this$0:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->access$200(Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$2;->this$0:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    .line 84
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->access$200(Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$2;->this$0:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->access$300(Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Please enter valid Verification Code."

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$2;->this$0:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->access$100(Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;)Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$2;->this$0:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->access$200(Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;->onSubmitOTP(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
