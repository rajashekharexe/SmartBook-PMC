.class public Lcom/conceptglobal/pmc/fotracker/PowerSaveModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaveModeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private saveErrorLog(Ljava/lang/String;)V
    .locals 4

    .line 31
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    .line 33
    :try_start_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 36
    const-string v3, "ErrorMessage"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string p1, "CreatedDate"

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string p1, "PDAID"

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    const-string p1, "ServerStatus"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    const-string p1, "ErrorLogger"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 43
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 45
    :goto_2
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 46
    throw p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 19
    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 21
    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    const-string p1, "Power Save Mode - ON"

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fotracker/PowerSaveModeReceiver;->saveErrorLog(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_0
    const-string p1, "Power Save Mode - OFF"

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fotracker/PowerSaveModeReceiver;->saveErrorLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
