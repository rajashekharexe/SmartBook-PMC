.class Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$1;
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

    .line 71
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$1;->this$0:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$1;->this$0:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->access$000(Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 75
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog$1;->this$0:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->access$100(Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;)Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;->onClose()V

    return-void
.end method
