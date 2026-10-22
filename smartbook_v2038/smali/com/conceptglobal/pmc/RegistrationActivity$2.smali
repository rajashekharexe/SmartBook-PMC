.class Lcom/conceptglobal/pmc/RegistrationActivity$2;
.super Ljava/lang/Object;
.source "RegistrationActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/RegistrationActivity;
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

    .line 549
    iput-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    .line 553
    const-string v0, "status"

    .line 0
    const-string v1, "User already registered with other device./Re-register \nPress "

    .line 553
    iget-object v2, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$200(Lcom/conceptglobal/pmc/RegistrationActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    if-nez p2, :cond_4

    if-eqz p1, :cond_3

    .line 555
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v2, 0x5

    if-le p2, v2, :cond_3

    .line 556
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "RegistrationActivity"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :try_start_0
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 564
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "AUTHORISED"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "data"

    if-eqz p1, :cond_1

    .line 566
    :try_start_1
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 567
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-virtual {p2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$302(Lcom/conceptglobal/pmc/RegistrationActivity;Lcom/conceptglobal/pmc/model/GetUserDetailsModel;)Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    .line 568
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$300(Lcom/conceptglobal/pmc/RegistrationActivity;)Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getUserid()I

    move-result p1

    if-eqz p1, :cond_0

    .line 569
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    const-class v0, Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 570
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 571
    const-string v0, "ISFromRegistration"

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 572
    const-string v0, "UserDetails"

    iget-object v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$300(Lcom/conceptglobal/pmc/RegistrationActivity;)Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 573
    const-string v0, "EmployeeId"

    iget-object v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$000(Lcom/conceptglobal/pmc/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 575
    iget-object p2, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->startActivity(Landroid/content/Intent;)V

    .line 576
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->finish()V

    goto/16 :goto_0

    .line 614
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    new-instance p2, Lcom/conceptglobal/pmc/RegistrationActivity$2$1;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/RegistrationActivity$2$1;-><init>(Lcom/conceptglobal/pmc/RegistrationActivity$2;)V

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/RegistrationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 625
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "UNAUTHORISED"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    .line 627
    :cond_2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PDA ALREADY MAPPED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 628
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-virtual {p2, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$302(Lcom/conceptglobal/pmc/RegistrationActivity;Lcom/conceptglobal/pmc/model/GetUserDetailsModel;)Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    # Registration bypass - START
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    const-class v0, Lcom/conceptglobal/pmc/SplashScreenActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ISFromRegistration"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "UserDetails"

    iget-object v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$300(Lcom/conceptglobal/pmc/RegistrationActivity;)Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "EmployeeId"

    iget-object v1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$000(Lcom/conceptglobal/pmc/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->finish()V

    goto/16 :goto_0
    # Registration bypass - END

    move-result-object v0

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to continue. your old mobile will not work."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$600(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 645
    :catch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    const-string p2, "User detaitls inserton failed."

    invoke-static {p1, p2, v3}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$400(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 653
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    const-string p2, "No response received from server"

    invoke-static {p1, p2, v3}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$400(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 656
    :cond_4
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_5

    .line 657
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    const-string p2, "Unable to get response from server"

    invoke-static {p1, p2, v3}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$400(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 660
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$2;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    const-string p2, "Unable to connect to Network, please check your network connection"

    invoke-static {p1, p2, v3}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$400(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/lang/String;I)V

    :cond_6
    :goto_0
    return-void
.end method
