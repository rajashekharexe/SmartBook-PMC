.class Lcom/conceptglobal/pmc/ChangePasswordActivity$1;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/ChangePasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/ChangePasswordActivity;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$1;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$1;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/ChangePasswordActivity;->et_cur_password:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$1;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/ChangePasswordActivity;->et_new_password:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$1;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/ChangePasswordActivity;->et_cnfm_password:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
