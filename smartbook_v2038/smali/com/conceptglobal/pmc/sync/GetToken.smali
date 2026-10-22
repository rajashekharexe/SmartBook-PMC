.class public Lcom/conceptglobal/pmc/sync/GetToken;
.super Ljava/lang/Object;
.source "GetToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/sync/GetToken$TokenModel;,
        Lcom/conceptglobal/pmc/sync/GetToken$GetTokenAsync;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private error:Ljava/lang/Exception;

.field private tokenttype:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/GetToken;->error:Ljava/lang/Exception;

    .line 32
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/GetToken;->context:Landroid/content/Context;

    .line 33
    iput p2, p0, Lcom/conceptglobal/pmc/sync/GetToken;->tokenttype:I

    return-void
.end method


# virtual methods
.method public StartGetToken()V
    .locals 9

    .line 38
    const-string v0, "UTF-8"

    .line 0
    const-string v1, "username="

    .line 38
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v2

    .line 41
    iget v3, p0, Lcom/conceptglobal/pmc/sync/GetToken;->tokenttype:I

    const/4 v4, 0x1

    const-string v5, "Update login time"

    const/4 v6, 0x5

    const-string v7, "AutoAppPatchAsync"

    if-ne v3, v4, :cond_0

    .line 44
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->GetUsernameQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/common/Queries;->getPasswordQuery()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 48
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&password="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&grant_type=password"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getTokenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_1

    .line 53
    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v0, "access_token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/common/Queries;->updateWebToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    .line 58
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 60
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    const-string v1, "Web Api Token"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 72
    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/GetToken;->error:Ljava/lang/Exception;

    .line 73
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 68
    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/GetToken;->error:Ljava/lang/Exception;

    .line 69
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    .line 65
    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/GetToken;->error:Ljava/lang/Exception;

    .line 66
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v3, v0, :cond_1

    .line 78
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->GetUsernameQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getPasswordQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getMobileQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    new-instance v4, Lcom/conceptglobal/pmc/sync/GetToken$TokenModel;

    invoke-direct {v4, p0}, Lcom/conceptglobal/pmc/sync/GetToken$TokenModel;-><init>(Lcom/conceptglobal/pmc/sync/GetToken;)V

    .line 83
    invoke-virtual {v4, v0}, Lcom/conceptglobal/pmc/sync/GetToken$TokenModel;->setUserName(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v4, v1}, Lcom/conceptglobal/pmc/sync/GetToken$TokenModel;->setPassword(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v4, v3}, Lcom/conceptglobal/pmc/sync/GetToken$TokenModel;->setMobile(Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 87
    invoke-virtual {v0, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodgetToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v2, v0, v1}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_1

    const/16 v1, 0x22

    const/16 v2, 0x20

    .line 92
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 95
    :try_start_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/common/Queries;->updateWcfToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    .line 96
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->reset()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_0

    :catch_4
    move-exception v0

    .line 98
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const-string v1, "WCF Token"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    .line 110
    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/GetToken;->error:Ljava/lang/Exception;

    .line 111
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_6
    move-exception v0

    .line 106
    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/GetToken;->error:Ljava/lang/Exception;

    .line 107
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_7
    move-exception v0

    .line 103
    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/GetToken;->error:Ljava/lang/Exception;

    .line 104
    invoke-static {v7, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
