.class public Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;
.super Ljava/lang/Object;
.source "GetDataFromDB.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetDataFromDB"

.field private static dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

.field private static instance:Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

.field private static sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "Exception"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->message:Ljava/lang/String;

    return-void
.end method

.method public static checkForDBTblUpdate([Ljava/lang/String;)V
    .locals 4

    .line 54
    :try_start_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 57
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;
    .locals 2

    .line 194
    const-string v0, "DbInstatnce"

    const-string v1, "---created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->instance:Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->instance:Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    .line 198
    :cond_0
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->instance:Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    return-object v0
.end method

.method public static getLatLondMandatory(Ljava/lang/String;)I
    .locals 3

    .line 165
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->mRequestType0:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    .line 168
    :try_start_0
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 169
    invoke-virtual {v2, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 170
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 173
    :cond_0
    :try_start_1
    sget-object p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->mRequestType0:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 175
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    .line 184
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_2
    sget-object p0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 181
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v1, :cond_3

    .line 184
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_3
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 188
    throw p0
.end method


# virtual methods
.method public checkIfEndDateIsEmpty()Z
    .locals 4

    const/4 v0, 0x0

    .line 778
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    .line 781
    :try_start_0
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 782
    const-string v3, "Select * from FoTrackerHeader Order By TrackId DESC Limit 1"

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 783
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 784
    const-string v2, "EndDate"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 785
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 786
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 791
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 794
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 796
    :cond_1
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 798
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :goto_1
    if-eqz v1, :cond_2

    .line 794
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 796
    :cond_2
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 797
    throw v0
.end method

.method public checkIfTableIsEmptyOrNot()I
    .locals 4

    const/4 v0, 0x0

    .line 707
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 712
    :try_start_0
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 714
    const-string v3, "Select * from FoTrackerHeader Order By TrackId DESC Limit 1"

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 715
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 716
    const-string v2, "EndDate"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 717
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 732
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 735
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 737
    :cond_2
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return v0

    :goto_2
    if-eqz v1, :cond_3

    .line 735
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 737
    :cond_3
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 738
    throw v0
.end method

.method public executeRawQuery(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public executeRawQueryForExpiry(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    throw p1
.end method

.method public declared-synchronized executeRawQueryInDB(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 242
    :try_start_0
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_0
    :try_start_1
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 247
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    :goto_0
    :try_start_3
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 250
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 256
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 259
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    monitor-exit p0

    throw p1

    .line 261
    :cond_0
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 688
    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 689
    const-string v2, "Select * from ConfigurableLookup WHERE itemKey=\'ButtonText\'"

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 690
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 691
    const-string v2, "itemValue"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 695
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 698
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 700
    :cond_1
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-object v0

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_2

    .line 698
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 700
    :cond_2
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 701
    throw v0
.end method

.method public getCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 290
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getDayFromDB()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 747
    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 748
    const-string v2, "Select * from FoTrackerHeader Order By TrackId DESC Limit 1"

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 749
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 750
    const-string v2, "StartDate"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 757
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 759
    :cond_1
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 754
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 757
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 759
    :cond_2
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    move-object v2, v0

    .line 763
    :goto_2
    :try_start_3
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "MMM dd yyyy HH:mm:ss.sss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 765
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 772
    :goto_3
    const-string v1, "dd"

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v1, :cond_3

    .line 757
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 759
    :cond_3
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 760
    throw v0
.end method

.method public getErrorLoggerDetails(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;",
            ">;"
        }
    .end annotation

    .line 650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 653
    :try_start_0
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 654
    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 655
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 659
    :cond_0
    :try_start_1
    new-instance p1, Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;-><init>()V

    .line 660
    const-string v2, "Id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;->setId(I)V

    .line 661
    const-string v2, "PDAID"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;->setPDAID(I)V

    .line 662
    const-string v2, "CreatedDate"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;->setCreatedDate(Ljava/lang/String;)V

    .line 663
    const-string v2, "ServerStatus"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;->setServerStatus(I)V

    .line 664
    const-string v2, "ErrorMessage"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;->setErrorMessage(Ljava/lang/String;)V

    .line 665
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 667
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 669
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 672
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 675
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 677
    :cond_2
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-object v0

    :goto_2
    if-eqz v1, :cond_3

    .line 675
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 677
    :cond_3
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 678
    throw p1
.end method

.method public getFOLables(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const/4 v1, 0x0

    .line 70
    :try_start_0
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 71
    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 75
    :try_start_1
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 77
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    .line 86
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->setHtFoLabels(Ljava/util/Hashtable;)V

    .line 89
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 83
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v1, :cond_3

    .line 86
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_3
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->setHtFoLabels(Ljava/util/Hashtable;)V

    .line 89
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 90
    throw p1
.end method

.method public getFoTrackerCount(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 830
    :try_start_0
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 831
    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 832
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 833
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 836
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 839
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 841
    :cond_1
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return v0

    :goto_1
    if-eqz v1, :cond_2

    .line 839
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 841
    :cond_2
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 842
    throw p1
.end method

.method public getFoTrackerHeaderDetails(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;",
            ">;"
        }
    .end annotation

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 545
    :try_start_0
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 546
    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 547
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 551
    :cond_0
    :try_start_1
    new-instance p1, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;-><init>()V

    .line 552
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->mRequestType0:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;->setTrackId(I)V

    .line 553
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->mRequestType1:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;->setUserId(I)V

    .line 554
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->mRequestType2:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;->setPdaId(I)V

    .line 555
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->mRequestType3:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;->setStartDate(Ljava/lang/String;)V

    .line 556
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->mRequestType4:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;->setEndDate(Ljava/lang/String;)V

    .line 557
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->mRequestType5:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;->setRemarks(Ljava/lang/String;)V

    .line 558
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->mRequestType6:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;->setCreatedBy(I)V

    .line 559
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->mRequestType7:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;->setCreatedDate(Ljava/lang/String;)V

    .line 560
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->mRequestType8:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;->setUpdatedBy(I)V

    .line 561
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->mRequestType9:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;->setUpdatedDate(Ljava/lang/String;)V

    .line 562
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->mRequestType10:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;->setFODistance(I)V

    .line 563
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->mRequestType11:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;->setActualEndDate(Ljava/lang/String;)V

    .line 564
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->mRequestType12:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;->setReasonType(Ljava/lang/String;)V

    .line 576
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 578
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 580
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 583
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 586
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 588
    :cond_2
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-object v0

    :goto_2
    if-eqz v1, :cond_3

    .line 586
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 588
    :cond_3
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 589
    throw p1
.end method

.method public getFoTrackerdetailsDetails(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;",
            ">;"
        }
    .end annotation

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 597
    :try_start_0
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 598
    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 599
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 603
    :cond_0
    :try_start_1
    new-instance p1, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;-><init>()V

    .line 604
    const-string v2, "DetailsId"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;->setDetailsId(I)V

    .line 605
    const-string v2, "TrackId"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;->setTrackId(I)V

    .line 606
    const-string v2, "Latitude"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;->setLatitude(Ljava/lang/String;)V

    .line 607
    const-string v2, "Longitude"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;->setLongitude(Ljava/lang/String;)V

    .line 608
    const-string v2, "PdaId"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;->setPdaId(I)V

    .line 609
    const-string v2, "SyncStatus"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;->setSyncStatus(I)V

    .line 610
    const-string v2, "CreatedBy"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;->setCreatedBy(I)V

    .line 611
    const-string v2, "CreatedDate"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;->setCreatedDate(Ljava/lang/String;)V

    .line 612
    const-string v2, "UpdatedBy"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;->setUpdatedBy(I)V

    .line 613
    const-string v2, "UpdatedDate"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;->setUpdatedDate(Ljava/lang/String;)V

    .line 631
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 633
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 635
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 638
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 641
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 643
    :cond_2
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-object v0

    :goto_2
    if-eqz v1, :cond_3

    .line 641
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 643
    :cond_3
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 644
    throw p1
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 347
    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 348
    invoke-virtual {v1, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 p1, 0x0

    if-eqz v0, :cond_1

    .line 349
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 352
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    move p1, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 359
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_2
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 356
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_3

    .line 359
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_3
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 361
    throw p1
.end method

.method public getLastData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/FoModel;",
            ">;"
        }
    .end annotation

    .line 802
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 805
    :try_start_0
    new-instance v2, Lcom/conceptglobal/pmc/fotracker/model/FoModel;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/fotracker/model/FoModel;-><init>()V

    .line 806
    sget-object v3, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sput-object v3, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 807
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getLastData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 808
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 809
    const-string v3, "Latitude"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/fotracker/model/FoModel;->setLatitude(Ljava/lang/String;)V

    .line 810
    const-string v3, "Longitude"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/fotracker/model/FoModel;->setLongitude(Ljava/lang/String;)V

    .line 811
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 815
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 818
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 821
    :cond_1
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-object v0

    :goto_1
    if-eqz v1, :cond_2

    .line 818
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 821
    :cond_2
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 822
    throw v0
.end method

.method public getLastTransactionData()Lcom/conceptglobal/pmc/fotracker/model/FoTrackerTransactionDetails;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "select TrackId,StartDate,EndDate from FoTrackerHeader where TrackId = "

    .line 108
    new-instance v1, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerTransactionDetails;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerTransactionDetails;-><init>()V

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 113
    :try_start_0
    sget-object v3, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sput-object v3, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 114
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getTrackId()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 115
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 118
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    sget-object v4, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 120
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    .line 123
    :cond_1
    :try_start_3
    const-string v0, "TrackId"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerTransactionDetails;->setTrackerId(I)V

    .line 124
    const-string v0, "StartDate"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerTransactionDetails;->setStartTime(Ljava/lang/String;)V

    .line 125
    const-string v0, "EndDate"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerTransactionDetails;->setEndTime(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 127
    :try_start_4
    const-string v3, "GetDataFromDB"

    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_1

    :cond_2
    if-eqz v2, :cond_3

    .line 136
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_3
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-object v1

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 133
    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    if-eqz v2, :cond_4

    .line 136
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_4
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 139
    throw v0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 490
    :try_start_0
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 491
    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 492
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 495
    :cond_0
    :try_start_1
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->mRequestType0:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 498
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 507
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_2
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 504
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v1, :cond_3

    .line 507
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_3
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 510
    throw p1
.end method

.method public getLocationData()Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x0

    .line 521
    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 522
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getAllLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    const-string v1, "Curosr"

    const-string v2, "empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 532
    :catch_0
    :try_start_1
    const-string v1, "Exception"

    const-string v2, "Error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 535
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 536
    :cond_1
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-object v0

    :goto_2
    if-eqz v0, :cond_2

    .line 535
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 536
    :cond_2
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 537
    throw v1
.end method

.method public getSingleValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 324
    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 325
    invoke-virtual {v1, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 326
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 328
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 336
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_2
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-object v0

    :catchall_0
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    .line 333
    :goto_1
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz p1, :cond_3

    .line 336
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_3
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 338
    throw v0
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 463
    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 464
    invoke-virtual {v1, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 465
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 467
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 474
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 475
    :cond_2
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-object v0

    :catchall_0
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    .line 471
    :goto_1
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz p1, :cond_3

    .line 474
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 475
    :cond_3
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 476
    throw v0
.end method

.method public getTrainingORLive()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 268
    :try_start_0
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 270
    const-string v3, "SELECT itemValue from ConfigurableLookup where itemKey=\'isTrainingORLive\'"

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 273
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 282
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_1
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 284
    throw v1

    :catch_0
    nop

    if-eqz v0, :cond_2

    .line 282
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_2
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return v1
.end method

.method public getValue(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 94
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getHtFoLabels()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 97
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/fotracker/util/SharedPrefManager;

    invoke-direct {v3}, Lcom/conceptglobal/pmc/fotracker/util/SharedPrefManager;-><init>()V

    invoke-static {p2}, Lcom/conceptglobal/pmc/fotracker/util/SharedPrefManager;->getPMCLanguage(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getStrings(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getFOLables(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getHtFoLabels()Ljava/util/Hashtable;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getcount(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 295
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->mRequestType0:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    .line 299
    :try_start_0
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 300
    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 301
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 303
    :cond_0
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->mRequestType0:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;->value()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 304
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    .line 311
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_2
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 308
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_3

    .line 311
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_3
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 315
    throw p1
.end method
