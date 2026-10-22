.class Lcom/conceptglobal/pmc/LoginActivity$15;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/LoginActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/LoginActivity;)V
    .locals 0

    .line 1768
    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$15;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5

    const-string v0, ""

    .line 1773
    const-string v1, "Some Error Occured at Server Side!"

    const/4 v2, 0x1

    if-nez p2, :cond_7

    .line 1774
    const-string p2, "Error Occured, Please Contact System Adminstrator"

    if-eqz p1, :cond_6

    .line 1775
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1776
    const-string p1, "data"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1777
    const-string v4, "statusMessage"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1778
    const-string v4, "ValidRequest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_0

    .line 1779
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1781
    iget-object p2, p0, Lcom/conceptglobal/pmc/LoginActivity$15;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    const-string v1, "Live"

    const-string v2, "Please enter the password shared to you."

    invoke-static {p2, p1, v1, v2}, Lcom/conceptglobal/pmc/LoginActivity;->access$2500(Lcom/conceptglobal/pmc/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    const-string p2, "Live Pin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1784
    :cond_0
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1785
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$15;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    const-string p2, "Invalid User."

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/LoginActivity;->access$2400(Lcom/conceptglobal/pmc/LoginActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1786
    :cond_1
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1787
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$15;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/LoginActivity;->access$2400(Lcom/conceptglobal/pmc/LoginActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 1789
    const-string p1, "CantGoLive"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1790
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$15;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    const-string p2, "You are not authorized to get into Live mode."

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/LoginActivity;->access$2400(Lcom/conceptglobal/pmc/LoginActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 1791
    const-string p1, "InvalidUser"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1792
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$15;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    const-string p2, "Invalid user"

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/LoginActivity;->access$2400(Lcom/conceptglobal/pmc/LoginActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    .line 1793
    const-string p1, "InvalidRequest"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1794
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$15;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Invalid Request"

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_8

    .line 1795
    const-string p1, "InternalError"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1796
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$15;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1799
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$15;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/LoginActivity;->access$2400(Lcom/conceptglobal/pmc/LoginActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1802
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$15;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    :goto_0
    return-void
.end method
