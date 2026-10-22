.class public Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;
.super Landroid/app/IntentService;
.source "SyncDataService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncDataService"

.field private static dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;


# instance fields
.field Log4Trace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Log4Trace;",
            ">;"
        }
    .end annotation
.end field

.field bundle:Landroid/os/Bundle;

.field private callbackActivity:Ljava/lang/String;

.field private errLogsCount:I

.field errorLogger:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;",
            ">;"
        }
    .end annotation
.end field

.field favouriteDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentFaourites;",
            ">;"
        }
    .end annotation
.end field

.field foTrackerDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/FoTrackerDetails;",
            ">;"
        }
    .end annotation
.end field

.field foTrackerHeader:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/fotracker/model/FoTrackerHeader;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;

.field private pendingPicutureRecordsCount:I

.field private pendingRecordsCount:I

.field private receiver:Landroid/os/ResultReceiver;

.field private syncStatus:Z

.field private totalPendingDataCount:I

.field usageDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/UsageDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    const-string v0, "SyncDataService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->foTrackerHeader:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->foTrackerDetails:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->errorLogger:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->usageDetails:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->Log4Trace:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->favouriteDetails:Ljava/util/List;

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->pendingRecordsCount:I

    .line 69
    iput v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->pendingPicutureRecordsCount:I

    .line 70
    iput v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->errLogsCount:I

    .line 71
    iput v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->totalPendingDataCount:I

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method private checkIsPictureExists(Ljava/lang/String;)Z
    .locals 1

    .line 627
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method private clearAllObjects()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->foTrackerHeader:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->foTrackerDetails:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 116
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->errorLogger:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 119
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->usageDetails:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 122
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->Log4Trace:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 125
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->favouriteDetails:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 128
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    return-void
.end method

.method private deleteDataAfterResponse(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    .line 384
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 385
    sget-object v2, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 386
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/conceptglobal/pmc/fotracker/model/RefreshAcknowledge;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/fotracker/model/RefreshAcknowledge;

    .line 415
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAcknowledge;->getLog4netList()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "id"

    const-string v5, ""

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAcknowledge;->getLog4netList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 417
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v6

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAcknowledge;->getLog4netList()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Log4Net"

    invoke-virtual {v6, v7, v8, v4}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 419
    :goto_0
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAcknowledge;->getSyncErrorLogList()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAcknowledge;->getSyncErrorLogList()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 421
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v6

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAcknowledge;->getSyncErrorLogList()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SyncErrorLog"

    invoke-virtual {v6, v7, v8, v4}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v3, 0x0

    .line 423
    :cond_1
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAcknowledge;->getFoTrackerHeaderList()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAcknowledge;->getFoTrackerHeaderList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 425
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v4

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAcknowledge;->getFoTrackerHeaderList()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FoTrackerHeader"

    const-string v8, "TrackId"

    invoke-virtual {v4, v6, v7, v8}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v3, 0x0

    .line 429
    :cond_2
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAcknowledge;->getFoTrackerDetailsList()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAcknowledge;->getFoTrackerDetailsList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 432
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v4

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAcknowledge;->getFoTrackerDetailsList()Ljava/lang/String;

    move-result-object v1

    const-string v5, "FoTrackerDetails"

    const-string v6, "DetailsId"

    invoke-virtual {v4, v1, v5, v6}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v3, 0x0

    :cond_3
    if-nez v3, :cond_4

    .line 442
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->preparePendingData()V

    .line 443
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncTransactionDataToServer(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :cond_4
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->isDatabaseOpen()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 446
    :try_start_2
    const-string v2, "SyncDataService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "deleteDataAfterResponse"

    invoke-static {v2, v1, v3, p1}, Lcom/conceptglobal/pmc/fotracker/util/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 449
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->isDatabaseOpen()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 450
    :goto_1
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    :cond_5
    return-void

    .line 449
    :goto_2
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->isDatabaseOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 450
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 451
    :cond_6
    throw p1
.end method

.method private deleteDataAfterSuccessfulResponse(Ljava/lang/String;)V
    .locals 5

    .line 531
    const-string v0, "SyncDataService"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 532
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 533
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    .line 534
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 535
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_a

    .line 537
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getTblAssighmentActivityDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    if-eqz v3, :cond_0

    .line 539
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getDeleteFarmerActDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    .line 541
    :try_start_2
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z

    .line 542
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/fotracker/util/PLog;->e(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto/16 :goto_1

    .line 544
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getTBLCROPMAPPING()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    if-eqz v3, :cond_1

    .line 546
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getUpdatefarmerCropmapping()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v3

    .line 548
    :try_start_4
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z

    .line 549
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/fotracker/util/PLog;->e(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto/16 :goto_1

    .line 551
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getTBLASSIGNMENTVISITDETAILS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    if-eqz v3, :cond_2

    .line 553
    :try_start_5
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getDeleteAssignmentVisitDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v3

    .line 555
    :try_start_6
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z

    .line 556
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/fotracker/util/PLog;->e(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto/16 :goto_1

    .line 558
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getTBLLOG4NET()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    if-eqz v3, :cond_3

    .line 560
    :try_start_7
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getDeletelog4net()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v3

    .line 562
    :try_start_8
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z

    .line 563
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/fotracker/util/PLog;->e(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto/16 :goto_1

    .line 565
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getTBLSYNCERRORLOG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    if-eqz v3, :cond_4

    .line 567
    :try_start_9
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getDeleteSyncErrorLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v3

    .line 569
    :try_start_a
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z

    .line 570
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/fotracker/util/PLog;->e(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto/16 :goto_1

    .line 572
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getTblFarmerMaster()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    if-eqz v3, :cond_5

    .line 574
    :try_start_b
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getUpdateFarmerMaster()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v3

    .line 576
    :try_start_c
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z

    .line 577
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/fotracker/util/PLog;->e(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto/16 :goto_1

    .line 579
    :cond_5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getTblDealerMaster()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    if-eqz v3, :cond_6

    .line 581
    :try_start_d
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getUpdateDealerrMaster()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v3

    .line 583
    :try_start_e
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z

    .line 584
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/fotracker/util/PLog;->e(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto/16 :goto_1

    .line 586
    :cond_6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getTblDealerCompanyMapping()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    if-eqz v3, :cond_7

    .line 588
    :try_start_f
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getUpdateDealerCompany()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v3

    .line 590
    :try_start_10
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z

    .line 591
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/fotracker/util/PLog;->e(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto/16 :goto_1

    .line 593
    :cond_7
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getTblDealerCropMapping()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    if-eqz v3, :cond_8

    .line 595
    :try_start_11
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getUpdateDealerCrop()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_1

    :catch_8
    move-exception v3

    .line 597
    :try_start_12
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z

    .line 598
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/fotracker/util/PLog;->e(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_1

    .line 600
    :cond_8
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getTBLLOG4NET()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    if-eqz v3, :cond_9

    .line 602
    :try_start_13
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getDeletelog4net()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    goto :goto_1

    :catch_9
    move-exception v3

    .line 604
    :try_start_14
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z

    .line 605
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/fotracker/util/PLog;->e(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_1

    .line 607
    :cond_9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getTBLSYNCERRORLOG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    if-eqz v3, :cond_a

    .line 609
    :try_start_15
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getDeleteSyncErrorLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    goto :goto_1

    :catch_a
    move-exception v3

    .line 611
    :try_start_16
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z

    .line 612
    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/fotracker/util/PLog;->e(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b

    :cond_a
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_b
    move-exception p1

    .line 618
    invoke-static {v0, p1, v1}, Lcom/conceptglobal/pmc/fotracker/util/PLog;->e(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 619
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z

    :cond_b
    return-void
.end method

.method private deleteUsageDetailsDataAfterResponse(Ljava/lang/String;)V
    .locals 11

    .line 454
    const-string v0, "DetailsId"

    const-string v1, "FoTrackerDetails"

    const/4 v2, 0x0

    .line 457
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 458
    sget-object v4, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 459
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v6, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;

    .line 460
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getUsageDetails()Ljava/util/ArrayList;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, ","

    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getUsageDetails()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 462
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    .line 463
    :goto_0
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getUsageDetails()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 464
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getUsageDetails()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 468
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "UsageDetails"

    const-string v10, "UsageId"

    invoke-virtual {v8, v5, v9, v10}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5, v4}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 470
    :cond_1
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getLog4Trace()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getLog4Trace()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 472
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    .line 473
    :goto_1
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getLog4Trace()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 474
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getLog4Trace()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 477
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 478
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "Log4Trace"

    const-string v10, "CreatedID"

    invoke-virtual {v8, v5, v9, v10}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5, v4}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 480
    :cond_3
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getErrorLogger()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getErrorLogger()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 482
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    .line 483
    :goto_2
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getErrorLogger()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 484
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getErrorLogger()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 487
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 488
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "SyncErrorLog"

    const-string v10, "id"

    invoke-virtual {v8, v5, v9, v10}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5, v4}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 490
    :cond_5
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getFoTrackerHeader()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getFoTrackerHeader()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    .line 493
    :goto_3
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getFoTrackerHeader()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 494
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getFoTrackerHeader()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 497
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 498
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "FoTrackerHeader"

    const-string v10, "TrackId"

    invoke-virtual {v8, v5, v9, v10}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5, v4}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 502
    :cond_7
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getFoTrackerDetails()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getFoTrackerDetails()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 504
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    .line 505
    :goto_4
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getFoTrackerDetails()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 506
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/fotracker/model/RefreshAck;->getFoTrackerDetails()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 509
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 510
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1, v0}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->UpdateDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 511
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v1, v0}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getDeleteSyncDetailsRows(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    :cond_9
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->isDatabaseOpen()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception v0

    .line 520
    :try_start_2
    const-string v1, "SyncDataService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "deleteDataAfterResponse"

    invoke-static {v1, v0, v3, p1}, Lcom/conceptglobal/pmc/fotracker/util/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 523
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->isDatabaseOpen()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 524
    :goto_5
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    :cond_a
    return-void

    .line 523
    :goto_6
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->isDatabaseOpen()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 524
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 525
    :cond_b
    throw p1
.end method

.method private preparePendingData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 135
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getFoTrackerHeaderQry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getFoTrackerHeaderDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->foTrackerHeader:Ljava/util/List;

    .line 136
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getFoDetailsQry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getFoTrackerdetailsDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->foTrackerDetails:Ljava/util/List;

    .line 137
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getErrorLoggerDetailsQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getErrorLoggerDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->errorLogger:Ljava/util/List;

    .line 138
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getUsageDetailsQry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getUsagedetailsDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->usageDetails:Ljava/util/List;

    .line 139
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getLog4NetQry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLog4TraceDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->Log4Trace:Ljava/util/List;

    .line 140
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getContentFavouriteDetailsQry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getContentFavouriteDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->favouriteDetails:Ljava/util/List;

    return-void
.end method

.method private submitDataToServerForFoTracker(Ljava/lang/String;Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;)V
    .locals 12

    .line 202
    const-string v0, "errorLogger"

    const-string v1, "foTrackerHeader"

    const-string v2, "foTrackerDetails"

    const-string v3, "SyncDataService"

    const-string v4, "Service test"

    const-string v5, "data"

    .line 204
    :try_start_0
    new-instance v6, Lcom/google/gson/GsonBuilder;

    invoke-direct {v6}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v6

    .line 205
    invoke-virtual {v6, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 207
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 208
    new-instance v7, Lcom/google/gson/JsonObject;

    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    :try_start_1
    const-string v8, "Data"

    invoke-virtual {v7, v8, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v8, "pdaId"

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getPdaId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    .line 219
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    :goto_0
    invoke-virtual {v7}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 224
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v8

    .line 225
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v9

    .line 226
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "---"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v8, v7, p1, v9}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 229
    const-string v4, ""

    if-eqz p1, :cond_7

    :try_start_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 231
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v8, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;

    .line 233
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AUTHORISED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    .line 235
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 236
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Success"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 240
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 241
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 246
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, v9

    .line 248
    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 249
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    move-object v1, v4

    .line 251
    :goto_2
    const-string v10, "returnids"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 253
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 255
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 256
    const-string v0, "FoTrackerHeader"

    const-string v6, "TrackId"

    invoke-static {v0, v1, v6}, Lcom/conceptglobal/pmc/fotracker/database/InsertDataIntoDB;->updateFoTrackerDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 260
    const-string v0, "FoTrackerDetails"

    const-string v1, "DetailsId"

    invoke-static {v0, v2, v1}, Lcom/conceptglobal/pmc/fotracker/database/InsertDataIntoDB;->updateFoTrackerDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 263
    const-string v0, "ErrorLogger "

    const-string v1, "Id"

    invoke-static {v0, v9, v1}, Lcom/conceptglobal/pmc/fotracker/database/InsertDataIntoDB;->updateErrorLoggerDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_5
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->deleteDataAfterResponse(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->deleteUsageDetailsDataAfterResponse(Ljava/lang/String;)V

    goto :goto_3

    .line 279
    :cond_6
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNAUTHORISED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 281
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid Token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 287
    const-string v0, "com.conceptglobal.pmc.service.SyncDataService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 288
    const-string v1, "syncDataToServer"

    invoke-virtual {v0, v1, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 290
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 291
    invoke-virtual {v1, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_7
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    const/4 p1, 0x0

    .line 303
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z

    :goto_4
    return-void
.end method

.method private submitDataToServerForUsageDetails(Ljava/lang/String;Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;)V
    .locals 7

    .line 308
    const-string v0, "SyncDataService"

    const-string v1, "data"

    .line 310
    :try_start_0
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 311
    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 313
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 314
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 318
    :try_start_1
    const-string v4, "Data"

    invoke-virtual {v3, v4, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v4, "pdaId"

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getPdaId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 325
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    :goto_0
    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v4

    .line 331
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v5

    .line 332
    invoke-virtual {v4, v3, p1, v5}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 333
    const-string v3, ""

    if-eqz p1, :cond_1

    :try_start_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 335
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;

    .line 337
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AUTHORISED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 339
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 340
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Success"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 346
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->deleteDataAfterResponse(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->deleteUsageDetailsDataAfterResponse(Ljava/lang/String;)V

    goto :goto_1

    .line 350
    :cond_0
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v4, "UNAUTHORISED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid Token"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    const-string v1, "com.conceptglobal.pmc.service.SyncDataService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 359
    const-string v2, "syncDataToServer"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x1

    .line 360
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 361
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 362
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    const/4 p1, 0x0

    .line 374
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z

    :goto_2
    return-void
.end method

.method private syncDataToServer()V
    .locals 2

    .line 149
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->clearAllObjects()V

    const/4 v0, 0x0

    .line 151
    :try_start_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->preparePendingData()V

    .line 152
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncTransactionDataToServer(Z)V

    const/4 v1, 0x1

    .line 153
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 155
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z

    .line 156
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    :goto_0
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncStatus:Z

    if-nez v0, :cond_0

    .line 160
    const-string v0, "Failed while sending data to server"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->msg:Ljava/lang/String;

    goto :goto_1

    .line 162
    :cond_0
    const-string v0, "Data sent successfully"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->msg:Ljava/lang/String;

    .line 164
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->msg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->updateUIIfNeccessary(Ljava/lang/String;)V

    return-void
.end method

.method private syncTransactionDataToServer(Z)V
    .locals 3

    .line 174
    new-instance p1, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;-><init>()V

    .line 177
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->foTrackerHeader:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->setFoTrackerHeaderModel(Ljava/util/List;)V

    .line 178
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->foTrackerDetails:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->setFoTrackerDetailsModel(Ljava/util/List;)V

    .line 179
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->errorLogger:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->setErrorLogger(Ljava/util/List;)V

    .line 181
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->usageDetails:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->setUsageDetails(Ljava/util/List;)V

    .line 182
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->favouriteDetails:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->setFavouriteDetails(Ljava/util/List;)V

    .line 183
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->Log4Trace:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;->setLog4Trace(Ljava/util/List;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCCMService(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/TransactionSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    .line 189
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSyncPMCData()Ljava/lang/String;

    .line 192
    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->submitDataToServerForFoTracker(Ljava/lang/String;Lcom/conceptglobal/pmc/fotracker/model/SendFarmerDetailsModel;)V

    return-void
.end method

.method private updateUIIfNeccessary(Ljava/lang/String;)V
    .locals 3

    .line 647
    new-instance v0, Landroid/content/Intent;

    const-string v1, "FTSyncStatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 648
    const-string v1, "Status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "response--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncDataService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->bundle:Landroid/os/Bundle;

    const-string v2, "respMsg"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->receiver:Landroid/os/ResultReceiver;

    if-eqz p1, :cond_1

    .line 654
    const-string p1, "sending back "

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->callbackActivity:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 656
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->bundle:Landroid/os/Bundle;

    const-string v1, "callbackActivity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->receiver:Landroid/os/ResultReceiver;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "callbackActivity--"

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    const-string v1, "SyncDataService"

    const-string v2, "onHandleIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->checkDataBase()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    const-string v1, "receiver"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "receiver"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->receiver:Landroid/os/ResultReceiver;

    .line 90
    :cond_0
    const-string v1, "callbackActivity"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const-string v1, "callbackActivity"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->callbackActivity:Ljava/lang/String;

    .line 94
    :cond_1
    const-string p1, "SyncDataService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->callbackActivity:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 96
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->receiver:Landroid/os/ResultReceiver;

    if-eqz p1, :cond_2

    .line 97
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 99
    :cond_2
    const-string p1, "Data syncing started.."

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->updateUIIfNeccessary(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->syncDataToServer()V

    goto :goto_0

    .line 103
    :cond_3
    const-string p1, "Internet is turned off"

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;->updateUIIfNeccessary(Ljava/lang/String;)V

    .line 106
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
