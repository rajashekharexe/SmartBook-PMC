.class Lcom/conceptglobal/pmc/ChangePasswordActivity$2;
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

    .line 109
    iput-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 114
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/ChangePasswordActivity;->et_cur_password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    const v2, 0x7f100119

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/ChangePasswordActivity;->et_cur_password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->access$000(Lcom/conceptglobal/pmc/ChangePasswordActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    const v2, 0x7f10011c

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/ChangePasswordActivity;->et_new_password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x4

    if-ge p1, v1, :cond_2

    .line 119
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    const v2, 0x7f10011b

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/ChangePasswordActivity;->et_cnfm_password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v1, :cond_3

    .line 121
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    const v2, 0x7f100118

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 122
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/ChangePasswordActivity;->et_new_password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    iget-object v1, v1, Lcom/conceptglobal/pmc/ChangePasswordActivity;->et_cnfm_password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 123
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    const v2, 0x7f10011a

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 124
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/ChangePasswordActivity;->et_cur_password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    iget-object v1, v1, Lcom/conceptglobal/pmc/ChangePasswordActivity;->et_new_password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 125
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    const v2, 0x7f100078

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 127
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->access$100(Lcom/conceptglobal/pmc/ChangePasswordActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 128
    new-instance p1, Lcom/conceptglobal/pmc/model/SendChangePasswordRequest;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/SendChangePasswordRequest;-><init>()V

    .line 129
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/SendChangePasswordRequest;->setPdaid(I)V

    .line 130
    iget-object v0, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->access$000(Lcom/conceptglobal/pmc/ChangePasswordActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/SendChangePasswordRequest;->setOldPassword(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->et_new_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/SendChangePasswordRequest;->setNewPassword(Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 134
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->access$200(Lcom/conceptglobal/pmc/ChangePasswordActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    const v2, 0x7f1000fb

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
