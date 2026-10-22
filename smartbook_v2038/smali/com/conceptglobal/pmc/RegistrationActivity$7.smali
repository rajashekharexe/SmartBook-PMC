.class Lcom/conceptglobal/pmc/RegistrationActivity$7;
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

    .line 1020
    iput-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$7;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 10

    .line 1025
    const-string v0, "Some Error Occured at Server Side!"

    const/4 v1, 0x1

    if-nez p2, :cond_7

    .line 1026
    const-string p2, "Error Occured, Please Contact System Adminstrator"

    const/4 v2, 0x3

    if-eqz p1, :cond_6

    .line 1027
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1028
    const-string p1, "data"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1029
    const-string p1, "statusMessage"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1030
    const-string v3, "ValidRequest"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v6, :cond_0

    .line 1031
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 1032
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$7;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    iput-object v6, p1, Lcom/conceptglobal/pmc/RegistrationActivity;->mOTP:Ljava/lang/String;

    .line 1034
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$7;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    new-instance p2, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity$7;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$800(Lcom/conceptglobal/pmc/RegistrationActivity;)Landroid/content/Context;

    move-result-object v5

    const-string v7, "An SMS is sent to your registered mobile number \u2013 Enter the password shared to you through SMS"

    iget-object v8, p0, Lcom/conceptglobal/pmc/RegistrationActivity$7;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    const-string v9, "Registration"

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;Ljava/lang/String;)V

    iput-object p2, p1, Lcom/conceptglobal/pmc/RegistrationActivity;->otpVerificationDialog:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    .line 1036
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$7;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/RegistrationActivity;->otpVerificationDialog:Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->showDialog()V

    goto/16 :goto_0

    .line 1038
    :cond_0
    const-string p1, "2"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1039
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$7;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    const-string p2, "Invalid User."

    invoke-static {p1, p2, v2}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$400(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1040
    :cond_1
    const-string p1, "0"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1041
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$7;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-static {p1, p2, v2}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$400(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 1043
    const-string p2, "CantGoLive"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1044
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$7;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    const-string p2, "You are not authorized to do the mobile swap."

    invoke-static {p1, p2, v2}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$400(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 1045
    const-string p2, "InvalidUser"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1046
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$7;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    const-string p2, "Invalid user"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$400(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 1047
    const-string p2, "InvalidRequest"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1048
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$7;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Invalid Request"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_8

    .line 1049
    const-string p2, "InternalError"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1050
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$7;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1053
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$7;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-static {p1, p2, v2}, Lcom/conceptglobal/pmc/RegistrationActivity;->access$400(Lcom/conceptglobal/pmc/RegistrationActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 1056
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$7;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    :goto_0
    return-void
.end method
