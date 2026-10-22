.class Lcom/conceptglobal/pmc/LoginActivity$14;
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

    .line 1738
    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$14;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    if-nez p2, :cond_3

    .line 1744
    const-string p2, "Error Occured, Please Contact System Adminstrator"

    if-eqz p1, :cond_2

    .line 1745
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1746
    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1748
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1749
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$14;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    const-string p2, "Password shared to you through SMS"

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/LoginActivity;->access$2400(Lcom/conceptglobal/pmc/LoginActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1750
    :cond_0
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1751
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$14;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    const-string p2, "Invalid User."

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/LoginActivity;->access$2400(Lcom/conceptglobal/pmc/LoginActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1752
    :cond_1
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1753
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$14;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/LoginActivity;->access$2400(Lcom/conceptglobal/pmc/LoginActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1757
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$14;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/LoginActivity;->access$2400(Lcom/conceptglobal/pmc/LoginActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1760
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$14;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Some Error Occured at Server Side!"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method
