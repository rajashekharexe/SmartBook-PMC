.class public Lcom/conceptglobal/pmc/database/GetDataFromDBLog;
.super Ljava/lang/Object;
.source "GetDataFromDBLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetDataFromDBLog"

.field private static dbInstance:Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

.field private static instance:Lcom/conceptglobal/pmc/database/GetDataFromDBLog;

.field private static sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->dbInstance:Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "Exception"

    iput-object v0, p0, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->message:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDBLog;
    .locals 2

    const-class v0, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->instance:Lcom/conceptglobal/pmc/database/GetDataFromDBLog;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;-><init>()V

    sput-object v1, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->instance:Lcom/conceptglobal/pmc/database/GetDataFromDBLog;

    .line 35
    :cond_0
    sget-object v1, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->instance:Lcom/conceptglobal/pmc/database/GetDataFromDBLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized executeRawQueryInDB(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 41
    :try_start_0
    sget-object v0, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->dbInstance:Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    :try_start_1
    sget-object p1, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->dbInstance:Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :goto_0
    :try_start_3
    sget-object v0, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->dbInstance:Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->closeDatabase()V

    .line 49
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 101
    sget-object v0, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getLogData(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Logger;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 56
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    .line 57
    sget-object v3, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->dbInstance:Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sput-object v3, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    invoke-virtual {v3, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 59
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 62
    :cond_0
    :try_start_1
    new-instance p1, Lcom/conceptglobal/pmc/model/Logger;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/Logger;-><init>()V

    .line 63
    sget-object v3, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType0:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/model/Logger;->setId(I)V

    .line 64
    sget-object v3, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType1:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/model/Logger;->setClassName(Ljava/lang/String;)V

    .line 65
    sget-object v3, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType2:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/model/Logger;->setMethodName(Ljava/lang/String;)V

    .line 66
    sget-object v3, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType3:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/model/Logger;->setParams(Ljava/lang/String;)V

    .line 67
    sget-object v3, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType4:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/model/Logger;->setLogTime(Ljava/lang/String;)V

    .line 68
    sget-object v3, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType5:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/model/Logger;->setMethodResult(Ljava/lang/String;)V

    .line 69
    sget-object v3, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType6:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/model/Logger;->setServerUpdatedStatus(Ljava/lang/String;)V

    .line 70
    sget-object v3, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType7:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/model/Logger;->setExecutionTime(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/model/Logger;->setPdaId(Ljava/lang/String;)V

    .line 72
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :catch_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 79
    :try_start_3
    const-string v2, "LOGGER"

    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 82
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_2
    sget-object p1, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->dbInstance:Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->closeDatabase()V

    return-object v0

    :goto_1
    if-eqz v1, :cond_3

    .line 82
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_3
    sget-object v0, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->dbInstance:Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->closeDatabase()V

    .line 85
    throw p1
.end method

.method public getLogsCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDBLog;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getDebugTraceErrorLogsCountQry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->getcount(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 94
    const-string v1, "GetDataFromDBLog"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    throw v0
.end method

.method public getcount(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    const-string v0, "GetDataFromDBLog"

    sget-object v1, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType0:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    .line 110
    :try_start_0
    sget-object v3, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->dbInstance:Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sput-object v3, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 111
    invoke-virtual {v3, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 112
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    .line 115
    :cond_0
    :try_start_2
    sget-object v3, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->mRequestType0:Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 117
    :try_start_3
    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v3, :cond_0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 126
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_2
    sget-object p1, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->dbInstance:Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->closeDatabase()V

    .line 129
    sput-object v2, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return v1

    :catchall_0
    move-exception v0

    move-object p1, v2

    goto :goto_3

    :catch_2
    move-exception v1

    move-object p1, v2

    .line 122
    :goto_2
    :try_start_4
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz p1, :cond_3

    .line 126
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_3
    sget-object p1, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->dbInstance:Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->closeDatabase()V

    .line 129
    sput-object v2, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 130
    throw v0
.end method
