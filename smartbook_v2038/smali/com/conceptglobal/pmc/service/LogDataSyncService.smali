.class public Lcom/conceptglobal/pmc/service/LogDataSyncService;
.super Landroid/app/IntentService;
.source "LogDataSyncService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LogDataSyncService"


# instance fields
.field bundle:Landroid/os/Bundle;

.field private callbackActivity:Ljava/lang/String;

.field private errLogsCount:I

.field private isEnabled:I

.field private loggerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Landroid/os/ResultReceiver;

.field private syncStatus:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    const-string v0, "LogDataSyncService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/LogDataSyncService;->loggerList:Ljava/util/List;

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/conceptglobal/pmc/service/LogDataSyncService;->errLogsCount:I

    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/service/LogDataSyncService;->syncStatus:Z

    .line 59
    iput v0, p0, Lcom/conceptglobal/pmc/service/LogDataSyncService;->isEnabled:I

    return-void
.end method

.method private deleteDataAfterResponse(Ljava/lang/String;)V
    .locals 4

    .line 236
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 237
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class p1, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;

    .line 239
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getDebugTraceLogList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getDebugTraceLogList()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDBLog;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/RefreshAcknowledge;->getDebugTraceLogList()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Logger"

    const-string v3, "id"

    invoke-virtual {v1, p1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Lcom/conceptglobal/pmc/service/LogDataSyncService;->prepareLogsData()V

    const/4 p1, 0x1

    .line 246
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/service/LogDataSyncService;->syncTransactionDataToServer(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 249
    const-string v0, "LogDataSyncService"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 250
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/service/LogDataSyncService;->syncStatus:Z

    :cond_0
    :goto_0
    return-void
.end method

.method private deleteOldLogs()V
    .locals 4

    .line 108
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteLogTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v0

    .line 109
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    neg-int v0, v0

    .line 111
    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 112
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDBLog;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteLogQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    const-string v1, "LogDataSyncService"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :goto_0
    return-void
.end method

.method private prepareLogsData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDBLog;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSelectLoggerDetails_By1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->getLogData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/LogDataSyncService;->loggerList:Ljava/util/List;

    return-void
.end method

.method private sendTableByTableDataToServer(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    new-instance v0, Lcom/conceptglobal/pmc/model/SyncDebugTraceLogger;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SyncDebugTraceLogger;-><init>()V

    .line 216
    const-string v1, "logger"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSyncDebugTraceLogger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDBLog;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getSelectLoggerDetails_By1000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->getLogData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 221
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 222
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/SyncDebugTraceLogger;->setDebugLogger(Ljava/util/List;)V

    .line 223
    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/service/LogDataSyncService;->submitDataToServer(Ljava/lang/String;Lcom/conceptglobal/pmc/model/SyncDebugTraceLogger;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 228
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    :cond_2
    return-void
.end method

.method private submitDataToServer(Ljava/lang/String;Lcom/conceptglobal/pmc/model/SyncDebugTraceLogger;)V
    .locals 8

    .line 167
    const-string v0, "data"

    const-string v1, "LogDataSyncService"

    const/4 v2, 0x0

    .line 169
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v3

    .line 170
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    .line 171
    invoke-virtual {v4, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 172
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v4

    .line 173
    invoke-virtual {v4, p2, p1, v3}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    const-string v3, ""

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v6, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 176
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AUTHORISED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 178
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 182
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/service/LogDataSyncService;->deleteDataAfterResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v5, "UNAUTHORISED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Invalid Token"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    new-instance v0, Lcom/conceptglobal/pmc/sync/GetToken;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v0, v5, v4}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 191
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 193
    const-string v0, "com.conceptglobal.pmc.service.LogDataSyncService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 194
    const-string v4, "syncDataToServer"

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    .line 195
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 197
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v2

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 205
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/service/LogDataSyncService;->syncStatus:Z

    .line 206
    invoke-static {v1, p1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :goto_1
    return-void
.end method

.method private syncDataToServer()V
    .locals 2

    .line 122
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDBLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->getLogsCount()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/service/LogDataSyncService;->errLogsCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 124
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/service/LogDataSyncService;->syncTransactionDataToServer(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 127
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/service/LogDataSyncService;->syncStatus:Z

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private syncTransactionDataToServer(Z)V
    .locals 3

    .line 140
    new-instance v0, Lcom/conceptglobal/pmc/model/SyncDebugTraceLogger;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SyncDebugTraceLogger;-><init>()V

    if-eqz p1, :cond_1

    .line 143
    :try_start_0
    iget p1, p0, Lcom/conceptglobal/pmc/service/LogDataSyncService;->errLogsCount:I

    const/16 v1, 0xc8

    if-ge p1, v1, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/conceptglobal/pmc/service/LogDataSyncService;->prepareLogsData()V

    .line 146
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/LogDataSyncService;->loggerList:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/SyncDebugTraceLogger;->setDebugLogger(Ljava/util/List;)V

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSyncDebugTraceLogger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/service/LogDataSyncService;->submitDataToServer(Ljava/lang/String;Lcom/conceptglobal/pmc/model/SyncDebugTraceLogger;)V

    goto :goto_0

    .line 152
    :cond_0
    const-string p1, "logger"

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/service/LogDataSyncService;->sendTableByTableDataToServer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 155
    const-string v0, "LogDataSyncService"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "callbackActivity--"

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    const-string v1, "LogDataSyncService"

    const-string v2, "onHandleIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->checkDataBase()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    const-string v1, "receiver"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    iput-object v1, p0, Lcom/conceptglobal/pmc/service/LogDataSyncService;->receiver:Landroid/os/ResultReceiver;

    .line 72
    const-string v1, "callbackActivity"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "callbackActivity"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/service/LogDataSyncService;->callbackActivity:Ljava/lang/String;

    .line 76
    :cond_0
    const-string p1, "LogDataSyncService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/service/LogDataSyncService;->callbackActivity:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/LogDataSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 78
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/LogDataSyncService;->receiver:Landroid/os/ResultReceiver;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 79
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getDebugLogSyncStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/service/LogDataSyncService;->isEnabled:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    :try_start_2
    const-string v1, "LogDataSyncService"

    invoke-static {v1, p1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 88
    :goto_0
    iget p1, p0, Lcom/conceptglobal/pmc/service/LogDataSyncService;->isEnabled:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 90
    invoke-direct {p0}, Lcom/conceptglobal/pmc/service/LogDataSyncService;->syncDataToServer()V

    .line 93
    :cond_2
    invoke-direct {p0}, Lcom/conceptglobal/pmc/service/LogDataSyncService;->deleteOldLogs()V

    .line 94
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/LogDataSyncService;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/PMCApplication;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/PMCApplication;->isHomeFragmentActive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 96
    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->setRefreshActionButtonState(Z)V

    .line 101
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
