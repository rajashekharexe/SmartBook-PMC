.class Lcom/conceptglobal/pmc/ChangePasswordActivity$3;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/ChangePasswordActivity;
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

    .line 197
    iput-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5

    .line 202
    const-string v0, ""

    const-string v1, "location"

    iget-object v2, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->access$300(Lcom/conceptglobal/pmc/ChangePasswordActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v3, 0x5

    if-le p2, v3, :cond_1

    .line 205
    const-string p2, "Success"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 207
    :try_start_0
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 208
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    iget-object v3, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    iget-object v3, v3, Lcom/conceptglobal/pmc/ChangePasswordActivity;->et_new_password:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/Encryption;->encryptRemovenewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getUpdatePasword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 210
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyContentSyncTime()Ljava/lang/String;

    move-result-object p2

    const-string v3, "01-01-2000 00:00:00.000"

    invoke-static {p1, p2, v3}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v3, "MyPref"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p1, Lcom/conceptglobal/pmc/ChangePasswordActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 212
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    iget-object p2, p1, Lcom/conceptglobal/pmc/ChangePasswordActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iput-object p2, p1, Lcom/conceptglobal/pmc/ChangePasswordActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 213
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/ChangePasswordActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 214
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/ChangePasswordActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-static {p1, v1, v0}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    const-string p2, "Password Changed Successfully."

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 217
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    const-class v1, Lcom/conceptglobal/pmc/LoginActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->startActivity(Landroid/content/Intent;)V

    .line 218
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 224
    :cond_0
    const-string p2, "PasswordMisMatch"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 225
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Failed to Update New Password!"

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 231
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Some Error Occured at Server Side!"

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 234
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;->this$0:Lcom/conceptglobal/pmc/ChangePasswordActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->access$302(Lcom/conceptglobal/pmc/ChangePasswordActivity;Z)Z

    :cond_4
    :goto_0
    return-void
.end method
