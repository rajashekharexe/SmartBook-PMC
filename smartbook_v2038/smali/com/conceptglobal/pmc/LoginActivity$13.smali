.class Lcom/conceptglobal/pmc/LoginActivity$13;
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

    .line 1707
    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$13;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 1711
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$13;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity;->access$002(Lcom/conceptglobal/pmc/LoginActivity;Z)Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 1713
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x5

    if-le p2, v0, :cond_1

    .line 1715
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1716
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$13;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    const-string v0, "statusMessage"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/LoginActivity;->access$2302(Lcom/conceptglobal/pmc/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1717
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Ljava/io/StringReader;

    const-string v2, "data"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class p2, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    .line 1718
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getUserid()I

    move-result p2

    if-eqz p2, :cond_0

    .line 1720
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getActive()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/common/Queries;->updateUserImEiStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    .line 1721
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getIsDeviceActive()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getUserActive()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/conceptglobal/pmc/common/Queries;->updateUserSuspendStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    .line 1723
    :cond_0
    new-instance p1, Lcom/conceptglobal/pmc/model/DataAcknowledgementIMEIActiveStatus;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/DataAcknowledgementIMEIActiveStatus;-><init>()V

    .line 1724
    iget-object p2, p0, Lcom/conceptglobal/pmc/LoginActivity$13;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/LoginActivity;->access$500(Lcom/conceptglobal/pmc/LoginActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDeviceIMEIMultiple(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/model/DataAcknowledgementIMEIActiveStatus;->setIMEINumber(Ljava/lang/String;)V

    .line 1725
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/model/DataAcknowledgementIMEIActiveStatus;->setPdaId(Ljava/lang/String;)V

    .line 1726
    new-instance p2, Lcom/conceptglobal/pmc/LoginActivity$AcknowledgementUserIMEIStatus;

    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$13;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-direct {p2, v0, p1}, Lcom/conceptglobal/pmc/LoginActivity$AcknowledgementUserIMEIStatus;-><init>(Lcom/conceptglobal/pmc/LoginActivity;Lcom/conceptglobal/pmc/model/DataAcknowledgementIMEIActiveStatus;)V

    .line 1727
    new-array p1, v1, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/LoginActivity$AcknowledgementUserIMEIStatus;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1729
    const-string p2, " Get User details"

    invoke-static {p2, p1, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_1
    :goto_0
    return-void
.end method
