.class Lcom/conceptglobal/pmc/MainHomePageActivity$20;
.super Ljava/lang/Object;
.source "MainHomePageActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/MainHomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V
    .locals 0

    .line 1123
    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$20;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 1128
    const-string v0, "Some Error Occured at Server Side!"

    const/4 v1, 0x1

    if-nez p2, :cond_5

    if-eqz p1, :cond_4

    .line 1130
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1131
    const-string p1, "data"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1132
    const-string v2, "statusMessage"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1133
    const-string v2, "ValidRequest"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_6

    .line 1134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_6

    .line 1137
    iget-object p2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$20;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$300(Lcom/conceptglobal/pmc/MainHomePageActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_passwordCleardata()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "An SMS is sent to your registered mobile number \u2013 Enter the password shared to you through SMS"

    invoke-static {p2, p2, v0, v1, p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$1000(Lcom/conceptglobal/pmc/MainHomePageActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1139
    const-string p1, "CantDeleteDB"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1140
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$20;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    const-string p2, "You are not authorized to clear the database."

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$1100(Lcom/conceptglobal/pmc/MainHomePageActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1141
    const-string p1, "InvalidUser"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1142
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$20;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    const-string p2, "Invalid user"

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$1100(Lcom/conceptglobal/pmc/MainHomePageActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 1143
    const-string p1, "InvalidRequest"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1144
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$20;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Invalid Request"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_6

    .line 1145
    const-string p1, "InternalError"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1146
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$20;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1149
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$20;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    const-string p2, "Error Occured, Please Contact System Adminstrator"

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$1100(Lcom/conceptglobal/pmc/MainHomePageActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1152
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$20;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_0
    return-void
.end method
