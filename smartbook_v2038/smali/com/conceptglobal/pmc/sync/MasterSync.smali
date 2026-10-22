.class public Lcom/conceptglobal/pmc/sync/MasterSync;
.super Ljava/lang/Object;
.source "MasterSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterSync"

.field private static dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler; = null

.field public static isSyncForRecovery:Z = false


# instance fields
.field SyncAssignmentData:Z

.field SyncAssignmentDataExpenses:Z

.field private arrQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/SyncErrorLogModel;",
            ">;"
        }
    .end annotation
.end field

.field private assignmentCoun:I

.field assignmentCount:I

.field private context:Landroid/content/Context;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private failedTableCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isPannedSummaryOnly:Z

.field private isStatusBar:Z

.field private isSyncing:Z

.field private keysBuilder:Ljava/lang/StringBuilder;

.field private mConnectionClassManager:Lcom/facebook/network/connectionclass/ConnectionClassManager;

.field private mDeviceBandwidthSampler:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

.field public mMasterSyncAsyncTask:Lcom/conceptglobal/pmc/sync/MasterSync;

.field public mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

.field private masterCount:I

.field private masterSyncCount:Ljava/lang/String;

.field private masterVersionTablesDataBeforeSync:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/MasterVersionTableDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

.field private obj:Ljava/lang/String;

.field private objAck:Lcom/conceptglobal/pmc/model/SendAckList;

.field private objAckSDTv:Lcom/conceptglobal/pmc/model/SendAckSdtv;

.field private objAcksv:Lcom/conceptglobal/pmc/model/SendAckListSV;

.field private objAcksvforApproval:Lcom/conceptglobal/pmc/model/SendSVAckForApproval;

.field private processedSyncCount:I

.field private response:Ljava/lang/String;

.field private sbQueryBuilder:Ljava/lang/StringBuilder;

.field private specificMasterCount:I

.field private urlString:Ljava/lang/String;

.field private valuesBuilder:Ljava/lang/StringBuilder;

.field public webServices:Lcom/conceptglobal/pmc/asynctask/WebService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/sync/MasterSync;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->processedSyncCount:I

    .line 108
    const-string v1, "0"

    iput-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->masterSyncCount:Ljava/lang/String;

    const/4 v1, 0x1

    .line 129
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    .line 131
    iput v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->assignmentCoun:I

    iput v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->masterCount:I

    iput v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->specificMasterCount:I

    .line 133
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->SyncAssignmentData:Z

    .line 134
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->SyncAssignmentDataExpenses:Z

    .line 136
    iput v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->assignmentCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->processedSyncCount:I

    .line 108
    const-string v1, "0"

    iput-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->masterSyncCount:Ljava/lang/String;

    const/4 v1, 0x1

    .line 129
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    .line 131
    iput v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->assignmentCoun:I

    iput v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->masterCount:I

    iput v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->specificMasterCount:I

    .line 133
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->SyncAssignmentData:Z

    .line 134
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->SyncAssignmentDataExpenses:Z

    .line 136
    iput v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->assignmentCount:I

    .line 150
    iput-object p0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->mMasterSyncAsyncTask:Lcom/conceptglobal/pmc/sync/MasterSync;

    .line 151
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    .line 152
    iput-boolean p2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isStatusBar:Z

    .line 153
    sput-boolean v0, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->processedSyncCount:I

    .line 108
    const-string v1, "0"

    iput-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->masterSyncCount:Ljava/lang/String;

    const/4 v1, 0x1

    .line 129
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    .line 131
    iput v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->assignmentCoun:I

    iput v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->masterCount:I

    iput v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->specificMasterCount:I

    .line 133
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->SyncAssignmentData:Z

    .line 134
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->SyncAssignmentDataExpenses:Z

    .line 136
    iput v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->assignmentCount:I

    .line 157
    iput-object p0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->mMasterSyncAsyncTask:Lcom/conceptglobal/pmc/sync/MasterSync;

    .line 158
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    .line 159
    iput-boolean p2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isStatusBar:Z

    .line 160
    sput-boolean v0, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    .line 161
    iput-boolean p3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isPannedSummaryOnly:Z

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/sync/MasterSync;)Landroid/content/Context;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/sync/MasterSync;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isStatusBar:Z

    return p0
.end method

.method public static decompressNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 1969
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 1971
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1972
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    const/16 v2, 0x1000

    invoke-direct {p0, v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1973
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1974
    new-array v2, v2, [B

    .line 1976
    :goto_0
    invoke-virtual {p0, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1977
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v0, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1979
    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 1980
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1981
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2007
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2009
    const-string p0, ""

    return-object p0
.end method

.method private deleteDataAfterResponse(Ljava/lang/String;)V
    .locals 9

    .line 1739
    const-string v0, "RespondentNo"

    .line 1743
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 1744
    sget-object v2, Lcom/conceptglobal/pmc/sync/MasterSync;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1745
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;

    .line 1746
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getAssignmentIds()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, ""

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getAssignmentIds()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1748
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getAssignmentIds()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pmcAssignmentActivityDetails"

    const-string v8, "ActivityAssignmentId"

    invoke-virtual {v5, v6, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1750
    :cond_0
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getContactId()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "ContactId"

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getContactId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1752
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getContactId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DealerCompanyMapping "

    invoke-virtual {v6, v7, v8, v5}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1753
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getContactId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DealerCropMapping"

    invoke-virtual {v6, v7, v8, v5}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1754
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getRespondentNo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DealerLandDetails"

    invoke-virtual {v6, v7, v8, v5}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1755
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getContactId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DealerMaster"

    invoke-virtual {v6, v7, v8, v5}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1757
    :cond_1
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getRespondentNo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getRespondentNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1759
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getRespondentNo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FarmerCropDetails"

    invoke-virtual {v6, v7, v8, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1760
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getRespondentNo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FarmerLandDetails"

    invoke-virtual {v6, v7, v8, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1761
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getRespondentNo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FarmerMaster"

    invoke-virtual {v6, v7, v8, v0}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1764
    :cond_2
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getPMCTerritoryFarmerMaster()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getPMCTerritoryFarmerMaster()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1766
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getPMCTerritoryFarmerMaster()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PMCTerritoryFarmerMaster"

    const-string v8, "FarmerID"

    invoke-virtual {v3, v6, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1768
    :cond_3
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getPMCTerritoryDealerMaster()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getPMCTerritoryDealerMaster()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1770
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getPMCTerritoryDealerMaster()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PMCTerritoryDealerMaster"

    invoke-virtual {v3, v6, v7, v5}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1772
    :cond_4
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getStateMaster()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getStateMaster()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1774
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getStateMaster()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StateMaster"

    const-string v7, "StateId"

    invoke-virtual {v3, v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1776
    :cond_5
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getDistrictMaster()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getDistrictMaster()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1778
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getDistrictMaster()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DistrictMaster"

    const-string v7, "DistrictId"

    invoke-virtual {v3, v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1780
    :cond_6
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getMandalMaster()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getMandalMaster()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1782
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getMandalMaster()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MandalMaster"

    const-string v7, "MandalId"

    invoke-virtual {v3, v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1784
    :cond_7
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getVillageMaster()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getVillageMaster()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1786
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/UnaccessedMasterData;->getVillageMaster()Ljava/lang/String;

    move-result-object v1

    const-string v4, "VillageMaster"

    const-string v5, "VillageID"

    invoke-virtual {v3, v1, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteDetailsbyID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1802
    :cond_8
    sget-object p1, Lcom/conceptglobal/pmc/sync/MasterSync;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->isDatabaseOpen()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1803
    sget-object p1, Lcom/conceptglobal/pmc/sync/MasterSync;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 1806
    :cond_9
    invoke-direct {p0}, Lcom/conceptglobal/pmc/sync/MasterSync;->senddeleteAck()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1798
    :try_start_3
    const-string v1, "MasterSync"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "deleteDataAfterResponse"

    invoke-static {v1, v0, v2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1799
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1802
    sget-object p1, Lcom/conceptglobal/pmc/sync/MasterSync;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->isDatabaseOpen()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1803
    sget-object p1, Lcom/conceptglobal/pmc/sync/MasterSync;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    :cond_a
    :goto_0
    return-void

    .line 1802
    :goto_1
    sget-object v0, Lcom/conceptglobal/pmc/sync/MasterSync;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->isDatabaseOpen()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1803
    sget-object v0, Lcom/conceptglobal/pmc/sync/MasterSync;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 1804
    :cond_b
    throw p1
.end method

.method private doGeoSpecificMasterSyncSDTV(Z)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1581
    const-string v2, "getGeoDetails"

    const-string v3, ""

    const-string v4, "data"

    const-string v5, "Functional states"

    const-string v0, "doMasterSync"

    const-string v6, "MasterSync"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "Master spfc start Time"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "doMasterSync Master spfc start Time "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v0, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-eqz v0, :cond_b

    .line 1594
    sget-boolean v14, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    if-nez v14, :cond_a

    .line 1596
    :try_start_0
    const-string v14, "Getting Functional states"

    invoke-static {v5, v14}, Lcom/conceptglobal/pmc/utils/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    new-instance v14, Lcom/conceptglobal/pmc/model/GetGeography;

    invoke-direct {v14}, Lcom/conceptglobal/pmc/model/GetGeography;-><init>()V

    .line 1598
    new-instance v15, Lcom/google/gson/Gson;

    invoke-direct {v15}, Lcom/google/gson/Gson;-><init>()V

    .line 1599
    invoke-virtual {v14, v9}, Lcom/conceptglobal/pmc/model/GetGeography;->setStateId(I)V

    .line 1600
    invoke-virtual {v14, v9}, Lcom/conceptglobal/pmc/model/GetGeography;->setDistrictId(I)V

    .line 1601
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    if-eqz v16, :cond_0

    .line 1602
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v14, v7}, Lcom/conceptglobal/pmc/model/GetGeography;->setPDAID(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v7, v13

    :goto_1
    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x0

    :goto_3
    const/4 v13, 0x1

    goto/16 :goto_e

    .line 1605
    :cond_0
    :goto_4
    :try_start_2
    invoke-virtual {v15, v14}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1606
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v11, v11, 0x1

    .line 1609
    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    const-string v9, "0"

    move-object/from16 v17, v13

    const-string v13, "Getting SDTV Details  - "

    if-eqz v8, :cond_1

    move/from16 v18, v0

    .line 1610
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v9, v9}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->showProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v7, v17

    goto :goto_1

    :cond_1
    move/from16 v18, v0

    .line 1613
    :goto_5
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v19

    move/from16 v20, v10

    invoke-virtual/range {v19 .. v19}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSTDV()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1615
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v8

    invoke-virtual {v8, v7, v0, v14}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    .line 1616
    :try_start_5
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v7}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v8, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v15, v0, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 1617
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1618
    new-instance v10, Lcom/conceptglobal/pmc/model/SendAckSdtv;

    invoke-direct {v10}, Lcom/conceptglobal/pmc/model/SendAckSdtv;-><init>()V

    iput-object v10, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->objAckSDTv:Lcom/conceptglobal/pmc/model/SendAckSdtv;

    .line 1619
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v10

    const-string v14, "AUTHORISED"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1620
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v10, 0xa

    if-le v0, v10, :cond_6

    .line 1621
    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v8, Lcom/conceptglobal/pmc/model/SDTV;

    invoke-virtual {v15, v0, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/conceptglobal/pmc/model/SDTV;

    .line 1622
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/SDTV;->getMandalList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/SDTV;->getVillageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    if-nez v0, :cond_2

    const/16 v18, 0x0

    .line 1627
    :cond_2
    :try_start_6
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    if-eqz v0, :cond_3

    .line 1628
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/SDTV;->getStateList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1629
    :try_start_7
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/SDTV;->getDistrictList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v10, v0

    .line 1630
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/SDTV;->getMandalList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v10, v0

    .line 1631
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/SDTV;->getVillageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v10, v0

    .line 1632
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v14, v9, v15}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->showProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_3
    const/4 v10, 0x0

    goto :goto_7

    :catch_3
    move-exception v0

    const/4 v10, 0x0

    .line 1635
    :goto_6
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1637
    :goto_7
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->objAckSDTv:Lcom/conceptglobal/pmc/model/SendAckSdtv;

    invoke-static {v8, v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertDtdv(Lcom/conceptglobal/pmc/model/SDTV;Lcom/conceptglobal/pmc/model/SendAckSdtv;)Lcom/conceptglobal/pmc/model/SendAckSdtv;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->objAckSDTv:Lcom/conceptglobal/pmc/model/SendAckSdtv;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 1639
    :try_start_9
    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    if-eqz v8, :cond_4

    .line 1641
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SendAckSdtv;->getAckList()Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;->getStateIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1642
    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->objAckSDTv:Lcom/conceptglobal/pmc/model/SendAckSdtv;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/SendAckSdtv;->getAckList()Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;->getDistrictIds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v0, v8

    .line 1643
    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->objAckSDTv:Lcom/conceptglobal/pmc/model/SendAckSdtv;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/SendAckSdtv;->getAckList()Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;->getMandalIds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v0, v8

    .line 1644
    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->objAckSDTv:Lcom/conceptglobal/pmc/model/SendAckSdtv;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/SendAckSdtv;->getAckList()Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;->getVillageIds()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v0, v8

    .line 1645
    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v0, v10}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->showProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    .line 1648
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1650
    :cond_4
    :goto_8
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->objAck:Lcom/conceptglobal/pmc/model/SendAckList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SendAckList;->getAckList()Lcom/conceptglobal/pmc/model/SendAcknowledge;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 1651
    const-string v0, "returning Acknowledgement"

    invoke-static {v5, v0}, Lcom/conceptglobal/pmc/utils/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/sync/MasterSync;->sendSDTVAcktoServer()V

    goto :goto_9

    .line 1654
    :cond_5
    const-string v0, "No Functional states"

    invoke-static {v5, v0}, Lcom/conceptglobal/pmc/utils/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :goto_9
    move/from16 v0, v18

    const/4 v8, 0x0

    goto :goto_a

    :cond_6
    const/4 v8, 0x0

    .line 1657
    :try_start_b
    iput-boolean v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    const/4 v0, 0x0

    :goto_a
    const/4 v9, 0x0

    const/4 v13, 0x1

    goto :goto_c

    :cond_7
    const/4 v8, 0x0

    .line 1660
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UNAUTHORISED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1662
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-string v9, "Invalid Token"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1664
    new-instance v0, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v9, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    const/4 v10, 0x2

    invoke-direct {v0, v9, v10}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 1665
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 1667
    const-string v0, "com.conceptglobal.pmc.LoginActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    const/4 v9, 0x0

    .line 1668
    :try_start_c
    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    const/4 v13, 0x1

    .line 1669
    :try_start_d
    invoke-virtual {v10, v13}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1670
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 1671
    invoke-virtual {v10, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    goto :goto_e

    :catch_6
    move-exception v0

    goto/16 :goto_3

    :cond_8
    const/4 v9, 0x0

    const/4 v13, 0x1

    :goto_b
    const/4 v0, 0x0

    goto :goto_c

    :cond_9
    const/4 v9, 0x0

    const/4 v13, 0x1

    move/from16 v0, v18

    :goto_c
    move-object v13, v7

    move/from16 v10, v20

    goto :goto_f

    :catch_7
    move-exception v0

    goto/16 :goto_2

    :catch_8
    move-exception v0

    goto/16 :goto_1

    :catch_9
    move-exception v0

    goto :goto_d

    :catch_a
    move-exception v0

    move-object/from16 v17, v13

    :goto_d
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x1

    move-object/from16 v7, v17

    .line 1677
    :goto_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f1001b9

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1678
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v2, v7}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v7

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_a
    move/from16 v20, v10

    move-object/from16 v17, v13

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x1

    .line 1682
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_CannotSyncAlertText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, v17

    const/4 v0, 0x0

    :goto_f
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_b
    move/from16 v20, v10

    return v20
.end method

.method private doMasterSync(Z)Z
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 670
    const-string v2, ")"

    const-string v3, "("

    const-string v4, "com.conceptglobal.pmc.sync.MasterSync"

    const-string v5, "Getting Master Data"

    const-string v6, "Invalid Token"

    const-string v7, "UNAUTHORISED"

    const-string v8, "AUTHORISED"

    const-string v9, "/"

    const-string v10, ""

    .line 0
    const-string v11, "Normal masters data end  --"

    const-string v12, "Normal Masters count end  --"

    const-string v13, " Normal masters data start  --"

    const-string v14, "Normal Masters count Start  --"

    const-string v15, "null"

    move-object/from16 v16, v2

    .line 670
    const-string v2, "MasterSync"

    move-object/from16 v17, v3

    const-string v3, "doMasterSync"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v18, v11

    const-string v11, "Master mthd start Time"

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v10

    .line 676
    sget-boolean v11, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    move-object/from16 v20, v13

    if-nez v11, :cond_17

    .line 678
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    iput-object v13, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 680
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->masterVersionTablesDataBeforeSync:Ljava/util/List;

    .line 681
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v13

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/conceptglobal/pmc/common/Queries;->getGetMasterversionRecords()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getMasterVersionTableData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->masterVersionTablesDataBeforeSync:Ljava/util/List;

    .line 683
    iget-object v11, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/common/Queries;->getGetMasterversionRecords()Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v21, v3

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v11, v13, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 684
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLMASTERVERSION()Ljava/lang/String;

    move-result-object v3

    .line 683
    invoke-static {v11, v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->ConvertToXMLFormat(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 686
    new-instance v11, Lcom/conceptglobal/pmc/model/SendModel;

    invoke-direct {v11}, Lcom/conceptglobal/pmc/model/SendModel;-><init>()V

    .line 687
    new-instance v13, Lcom/google/gson/Gson;

    invoke-direct {v13}, Lcom/google/gson/Gson;-><init>()V

    .line 688
    invoke-virtual {v11, v3}, Lcom/conceptglobal/pmc/model/SendModel;->setXmlTableList(Ljava/lang/String;)V

    .line 689
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/conceptglobal/pmc/model/SendModel;->setStrPdaId(Ljava/lang/String;)V

    .line 690
    invoke-virtual {v13, v11}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->obj:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 695
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    const/4 v3, 0x0

    .line 696
    iput-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v11, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_2a

    :catch_1
    move-exception v0

    move-object/from16 v21, v3

    :goto_0
    move-object v3, v0

    .line 692
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f1001bb

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 693
    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 695
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    const/4 v3, 0x0

    .line 696
    iput-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 701
    :goto_1
    :try_start_3
    const-string v22, "APICallsTimeDetails"

    const-string v23, ""

    const-string v24, ""

    const-string v25, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-static/range {v22 .. v27}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    const/4 v3, 0x2

    .line 704
    :try_start_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v15

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v13

    invoke-virtual {v15, v13}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodMasterSyncNewCount()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    .line 705
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v13

    iget-object v14, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->obj:Ljava/lang/String;

    iget-object v15, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    invoke-virtual {v13, v14, v15, v10}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 707
    :try_start_5
    const-string v24, "APICallsTimeDetails"

    const-string v25, ""

    const-string v26, ""

    const-string v27, ""

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    invoke-static/range {v24 .. v29}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 711
    :catch_3
    :try_start_6
    iget-object v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 712
    new-instance v12, Lcom/google/gson/Gson;

    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    new-instance v13, Ljava/io/StringReader;

    iget-object v14, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v14, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v12, v13, v14}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 713
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    .line 714
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    if-eqz v13, :cond_0

    .line 715
    :try_start_7
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_1

    iget-object v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 716
    iget-object v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->masterCount:I

    .line 717
    iget-object v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    if-eqz v12, :cond_1

    .line 718
    const-string v13, "0"

    iget-object v14, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-virtual {v12, v5, v13, v14}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->showProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v3, v0

    move-object/from16 v13, v21

    goto :goto_4

    .line 721
    :cond_0
    :try_start_8
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 722
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 724
    new-instance v12, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v13, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    invoke-direct {v12, v13, v3}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 725
    invoke-virtual {v12}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 727
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-object/from16 v13, v21

    const/4 v14, 0x0

    .line 728
    :try_start_9
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    const/4 v14, 0x1

    .line 729
    invoke-virtual {v15, v14}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 730
    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    .line 731
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    new-array v3, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v21, v3, v14

    invoke-virtual {v15, v12, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_2
    move-object/from16 v13, v21

    goto :goto_5

    :catch_6
    move-exception v0

    move-object/from16 v13, v21

    :goto_3
    move-object v3, v0

    .line 737
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    const-string v14, "Masters Count"

    invoke-static {v14, v3, v13, v12}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :goto_5
    :try_start_a
    const-string v24, "APICallsTimeDetails"

    const-string v25, ""

    const-string v26, ""

    const-string v27, ""

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v12, v20

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    invoke-static/range {v24 .. v29}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v3, v0

    move-object v4, v13

    :goto_6
    const/4 v9, 0x0

    goto/16 :goto_28

    .line 744
    :catch_8
    :goto_7
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodMasterSyncNew()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    .line 745
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v3

    iget-object v9, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->obj:Ljava/lang/String;

    iget-object v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    invoke-virtual {v3, v9, v12, v10}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_26
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_25

    .line 747
    :try_start_c
    const-string v24, "APICallsTimeDetails"

    const-string v25, ""

    const-string v26, ""

    const-string v27, ""

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v9, v18

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    invoke-static/range {v24 .. v29}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_7

    .line 750
    :catch_9
    :try_start_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    .line 751
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->failedTableCount:Ljava/util/List;

    .line 752
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x3

    if-le v3, v9, :cond_16

    .line 753
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v10, Ljava/io/StringReader;

    iget-object v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v12, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v3, v10, v12}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 755
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    .line 756
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_26
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_25

    if-eqz v8, :cond_14

    .line 757
    :try_start_e
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_13

    iget-object v4, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_13

    .line 758
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    move-object/from16 v6, v19

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 759
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1d

    const-string v8, "\'"

    if-eqz v7, :cond_b

    .line 761
    :try_start_f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 762
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v14, 0x0

    .line 763
    :goto_8
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v14, v12, :cond_2

    .line 764
    new-instance v12, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-direct {v12}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;-><init>()V

    iput-object v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    .line 765
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    .line 766
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    .line 767
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    .line 768
    iget-object v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v12, v7}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setTableName(Ljava/lang/String;)V

    .line 769
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLMASTERVERSION()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1d

    const-string v15, ","

    if-eqz v12, :cond_6

    .line 770
    :try_start_10
    iget-object v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    const-string v3, "UPDATE "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " SET "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 772
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 773
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 775
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v20

    const/16 v21, 0x1

    :goto_9
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1d

    if-eqz v22, :cond_5

    .line 777
    :try_start_11
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_1e

    move-object/from16 v24, v4

    :try_start_12
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_1e

    move-object/from16 v25, v11

    .line 779
    :try_start_13
    const-string v11, "TableName"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_1e

    move-object/from16 v26, v13

    const-string v13, " = \'"

    if-eqz v11, :cond_3

    add-int/lit8 v21, v21, 0x1

    .line 781
    :try_start_14
    iget-object v11, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v11, v4}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setColumnName(Ljava/lang/String;)V

    .line 782
    iget-object v11, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_1c

    move-object/from16 v27, v5

    :try_start_15
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setSourceID(Ljava/lang/String;)V

    .line 784
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " WHERE "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :catch_a
    move-exception v0

    move-object/from16 v27, v5

    goto/16 :goto_c

    :cond_3
    move-object/from16 v27, v5

    add-int/lit8 v21, v21, 0x1

    .line 788
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_1c

    :goto_a
    move/from16 v4, v21

    .line 791
    :try_start_16
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 794
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 795
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 796
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_1c

    const/16 v21, 0x1

    add-int/lit8 v5, v18, -0x1

    move-object/from16 v18, v3

    const/4 v3, 0x0

    :try_start_17
    invoke-virtual {v11, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_1c

    .line 800
    :try_start_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_1c

    move-object v9, v3

    move-object v12, v5

    const/16 v21, 0x1

    goto :goto_11

    :catch_b
    move-exception v0

    move-object v9, v3

    move/from16 v21, v4

    goto :goto_f

    :catch_c
    move-exception v0

    goto :goto_b

    :cond_4
    move-object/from16 v18, v3

    move/from16 v21, v4

    goto :goto_11

    :catch_d
    move-exception v0

    move-object/from16 v18, v3

    :goto_b
    move-object v3, v0

    move/from16 v21, v4

    goto :goto_10

    :catch_e
    move-exception v0

    :goto_c
    move-object/from16 v18, v3

    goto :goto_f

    :catch_f
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v27, v5

    goto :goto_e

    :catch_10
    move-exception v0

    move-object/from16 v18, v3

    goto :goto_d

    :catch_11
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v24, v4

    :goto_d
    move-object/from16 v27, v5

    move-object/from16 v25, v11

    :goto_e
    move-object/from16 v26, v13

    :goto_f
    move-object v3, v0

    .line 816
    :goto_10
    :try_start_19
    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    move-object/from16 v3, v18

    move-object/from16 v4, v24

    move-object/from16 v11, v25

    move-object/from16 v13, v26

    move-object/from16 v5, v27

    goto/16 :goto_9

    :cond_5
    move-object/from16 v24, v4

    move-object/from16 v27, v5

    move-object/from16 v25, v11

    move-object/from16 v26, v13

    move-object/from16 v3, v16

    goto/16 :goto_16

    :cond_6
    move-object/from16 v19, v3

    move-object/from16 v24, v4

    move-object/from16 v27, v5

    move-object/from16 v25, v11

    move-object/from16 v26, v13

    .line 820
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert or replace into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 825
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    const/4 v9, 0x0

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1b

    if-eqz v11, :cond_a

    .line 827
    :try_start_1a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 828
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-ne v9, v12, :cond_7

    .line 830
    iget-object v13, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v13, v11}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setColumnName(Ljava/lang/String;)V

    .line 832
    :cond_7
    iget-object v13, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_1c

    move-object/from16 v17, v4

    :try_start_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 834
    const-string v13, "SourceQuery"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 835
    iget-object v11, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_1c

    move-object/from16 v18, v3

    :try_start_1c
    const-string v3, "\""

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\","

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_8
    move-object/from16 v18, v3

    .line 837
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\',"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_13
    if-ne v9, v12, :cond_9

    .line 840
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setSourceID(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_1c

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :catch_12
    move-exception v0

    goto :goto_14

    :catch_13
    move-exception v0

    move-object/from16 v18, v3

    goto :goto_14

    :catch_14
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    :goto_14
    move-object v3, v0

    .line 844
    :try_start_1d
    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    move-object/from16 v4, v17

    move-object/from16 v3, v18

    goto/16 :goto_12

    :cond_a
    move-object/from16 v17, v4

    .line 847
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 848
    iget-object v4, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 849
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 850
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 851
    iget-object v9, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    const-string v9, "values"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    :goto_16
    iget-object v4, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setQuery(Ljava/lang/String;)V

    .line 856
    iget-object v4, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    iget-object v4, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v16, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v24

    move-object/from16 v11, v25

    move-object/from16 v13, v26

    move-object/from16 v5, v27

    const/4 v9, 0x3

    goto/16 :goto_8

    :cond_b
    move-object/from16 v27, v5

    move-object/from16 v25, v11

    move-object/from16 v26, v13

    .line 861
    iget v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->processedSyncCount:I

    iget-object v4, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->processedSyncCount:I

    .line 864
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_12

    sget-boolean v3, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1b

    if-nez v3, :cond_12

    .line 866
    :try_start_1e
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1a
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    move-object/from16 v11, v25

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 867
    :goto_17
    :try_start_1f
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_e

    .line 868
    sget-boolean v3, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_19
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    if-nez v3, :cond_e

    .line 870
    :try_start_20
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 871
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    if-eqz v3, :cond_c

    .line 872
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->masterCount:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_16
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    move-object/from16 v7, v27

    :try_start_21
    invoke-virtual {v3, v7, v4, v5}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->showProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_c
    move-object/from16 v7, v27

    .line 874
    :goto_18
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_15
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    goto/16 :goto_1b

    :catch_15
    move-exception v0

    goto :goto_19

    :catch_16
    move-exception v0

    move-object/from16 v7, v27

    :goto_19
    move-object v3, v0

    .line 877
    :try_start_22
    iget-object v4, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v15

    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    .line 878
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getSourceID()Ljava/lang/String;

    move-result-object v17

    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    .line 879
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLMASTERVERSION()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v19, v3

    .line 877
    invoke-virtual/range {v15 .. v21}, Lcom/conceptglobal/pmc/common/Queries;->insertIntoSyncErrorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 881
    iget-object v4, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->failedTableCount:Ljava/util/List;

    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 882
    iget-object v4, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->failedTableCount:Ljava/util/List;

    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_17
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    goto :goto_1a

    :catch_17
    move-exception v0

    move-object v4, v0

    .line 885
    :try_start_23
    invoke-static {v2, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v13, 0x0

    .line 888
    :cond_d
    :goto_1a
    iget-object v4, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1001b7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 889
    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_19
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    :goto_1b
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v27, v7

    goto/16 :goto_17

    .line 896
    :cond_e
    :try_start_24
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->failedTableCount:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_11

    const/4 v14, 0x0

    .line 897
    :goto_1c
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->failedTableCount:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_11

    const/4 v3, 0x0

    .line 898
    :goto_1d
    iget-object v4, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->masterVersionTablesDataBeforeSync:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_10

    .line 899
    iget-object v4, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->masterVersionTablesDataBeforeSync:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/MasterVersionTableDataModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/MasterVersionTableDataModel;->getTableName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->failedTableCount:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 900
    iget-object v4, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->failedTableCount:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->masterVersionTablesDataBeforeSync:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/MasterVersionTableDataModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/MasterVersionTableDataModel;->getUpdateOn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->updateFailedTableDatainMasterversion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_18
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_10
    add-int/lit8 v14, v14, 0x1

    goto :goto_1c

    .line 907
    :catch_18
    :cond_11
    :try_start_25
    invoke-direct/range {p0 .. p1}, Lcom/conceptglobal/pmc/sync/MasterSync;->doSpecificMasterSync(Z)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_19
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    .line 913
    :try_start_26
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    const/4 v3, 0x0

    .line 914
    iput-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_26
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_26} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_1b

    goto/16 :goto_2c

    :catch_19
    move-exception v0

    move-object v3, v0

    goto :goto_1e

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_1f

    :catch_1a
    move-exception v0

    move-object v3, v0

    move-object/from16 v11, v25

    .line 909
    :goto_1e
    :try_start_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1001b8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    .line 913
    :try_start_28
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    const/4 v3, 0x0

    .line 914
    iput-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->database:Landroid/database/sqlite/SQLiteDatabase;

    goto/16 :goto_29

    .line 913
    :goto_1f
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    const/4 v4, 0x0

    .line 914
    iput-object v4, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 915
    throw v3

    .line 918
    :cond_12
    invoke-direct/range {p0 .. p1}, Lcom/conceptglobal/pmc/sync/MasterSync;->doSpecificMasterSync(Z)Z

    goto/16 :goto_29

    :cond_13
    move-object/from16 v26, v13

    .line 922
    invoke-direct/range {p0 .. p1}, Lcom/conceptglobal/pmc/sync/MasterSync;->doSpecificMasterSync(Z)Z
    :try_end_28
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_28} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_1b

    goto :goto_22

    :catch_1b
    move-exception v0

    goto :goto_20

    :catch_1c
    move-exception v0

    goto :goto_21

    :catch_1d
    move-exception v0

    move-object/from16 v26, v13

    :goto_20
    move-object v3, v0

    move-object/from16 v4, v26

    const/4 v9, 0x0

    goto/16 :goto_25

    :catch_1e
    move-exception v0

    move-object/from16 v26, v13

    :goto_21
    move-object v3, v0

    move-object/from16 v4, v26

    goto/16 :goto_6

    :cond_14
    move-object/from16 v26, v13

    .line 924
    :try_start_29
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 925
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 927
    new-instance v3, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 928
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 930
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_29
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_29} :catch_22
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_21

    move-object/from16 v4, v26

    const/4 v5, 0x0

    .line 931
    :try_start_2a
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    .line 932
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 933
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 934
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_2a} :catch_20
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_1f

    const/4 v9, 0x0

    :try_start_2b
    aput-object v7, v8, v9

    invoke-virtual {v5, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2b

    :catch_1f
    move-exception v0

    goto :goto_23

    :catch_20
    move-exception v0

    goto :goto_26

    :cond_15
    :goto_22
    const/4 v6, 0x1

    goto/16 :goto_2b

    :catch_21
    move-exception v0

    move-object/from16 v4, v26

    goto :goto_23

    :catch_22
    move-exception v0

    move-object/from16 v4, v26

    goto :goto_26

    :cond_16
    move-object v4, v13

    const/4 v9, 0x0

    .line 940
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1001bc

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_2b} :catch_24
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_23

    goto :goto_29

    :catch_23
    move-exception v0

    goto :goto_24

    :catch_24
    move-exception v0

    goto :goto_27

    :catch_25
    move-exception v0

    move-object v4, v13

    :goto_23
    const/4 v9, 0x0

    :goto_24
    move-object v3, v0

    .line 948
    :goto_25
    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1001b9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 949
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :catch_26
    move-exception v0

    move-object v4, v13

    :goto_26
    const/4 v9, 0x0

    :goto_27
    move-object v3, v0

    .line 944
    :goto_28
    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1001ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 945
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    const/4 v13, 0x0

    goto :goto_2c

    .line 695
    :goto_2a
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    const/4 v3, 0x0

    .line 696
    iput-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 697
    throw v2

    :cond_17
    const/4 v6, 0x1

    .line 952
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_CannotSyncAlertText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    :goto_2b
    const/4 v13, 0x1

    .line 954
    :goto_2c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Master mthd end Time"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v13
.end method

.method private doSpecificMasterSync(Z)Z
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 960
    const-string v2, "DataCount"

    const-string v3, ""

    const-string v0, "doMasterSync"

    const-string v4, "MasterSync"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Master spfc start Time"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    new-instance v5, Lcom/conceptglobal/pmc/model/SendAckSdtv;

    invoke-direct {v5}, Lcom/conceptglobal/pmc/model/SendAckSdtv;-><init>()V

    .line 966
    new-instance v6, Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;

    invoke-direct {v6}, Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;-><init>()V

    .line 967
    new-instance v7, Lcom/conceptglobal/pmc/model/SendFailedAcknowledgeSDTV;

    invoke-direct {v7}, Lcom/conceptglobal/pmc/model/SendFailedAcknowledgeSDTV;-><init>()V

    .line 968
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-eqz v0, :cond_31

    .line 974
    sget-boolean v15, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    if-nez v15, :cond_30

    .line 977
    :try_start_0
    new-instance v15, Lcom/conceptglobal/pmc/model/SpecificMasterSync;

    invoke-direct {v15}, Lcom/conceptglobal/pmc/model/SpecificMasterSync;-><init>()V

    .line 978
    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    .line 979
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Lcom/conceptglobal/pmc/model/SpecificMasterSync;->setPdaId(Ljava/lang/String;)V

    .line 980
    invoke-virtual {v15, v6}, Lcom/conceptglobal/pmc/model/SpecificMasterSync;->setAckList(Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;)V

    .line 981
    invoke-virtual {v15, v7}, Lcom/conceptglobal/pmc/model/SpecificMasterSync;->setFailedAckList(Lcom/conceptglobal/pmc/model/SendFailedAcknowledgeSDTV;)V

    .line 982
    invoke-virtual {v10, v15}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_43

    .line 1026
    :try_start_1
    const-string v18, "APICallsTimeDetails"

    const-string v19, ""

    const-string v20, ""

    const-string v21, ""

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Specific Masters Start  --"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v18 .. v23}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1029
    :catch_0
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v15

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v9

    invoke-virtual {v15, v9}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodGetSpecificMastersGeneric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    .line 1030
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v9

    iget-object v11, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v8}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_43

    .line 1032
    :try_start_3
    const-string v19, "APICallsTimeDetails"

    const-string v20, ""

    const-string v21, ""

    const-string v22, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Specific Masters  End  --"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v19 .. v24}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    if-eqz v9, :cond_2f

    .line 1036
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2f

    .line 1037
    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    new-instance v11, Ljava/io/StringReader;

    invoke-direct {v11, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v9, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v10, v11, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 1038
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 1039
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 1040
    invoke-static {v10}, Lcom/conceptglobal/pmc/sync/MasterSync;->decompressNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1041
    :cond_0
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v11

    const-string v15, "AUTHORISED"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2d

    .line 1042
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_2c

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2c

    .line 1043
    const-string v11, "\\"

    invoke-virtual {v10, v11, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1044
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    .line 1045
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2c

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v11, 0x3

    if-le v9, v11, :cond_2c

    add-int/lit8 v13, v13, 0x1

    .line 1048
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1049
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    iput-object v10, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 1050
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1052
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_43

    const-string v11, "Getting Customer Details  - "

    if-eqz v15, :cond_2a

    .line 1054
    :try_start_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1055
    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_40

    if-eqz v19, :cond_1

    .line 1056
    :try_start_6
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->specificMasterCount:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_43

    :goto_3
    const/4 v11, 0x3

    goto :goto_2

    :cond_1
    move-object/from16 v19, v2

    .line 1059
    :try_start_7
    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_41

    move-object/from16 v20, v8

    .line 1060
    :try_start_8
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v9

    .line 1061
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3f

    move-object/from16 v24, v3

    move-object/from16 v23, v10

    move-object/from16 v22, v14

    const/4 v10, 0x0

    move v14, v12

    move v12, v0

    .line 1064
    :goto_4
    :try_start_9
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3e

    move/from16 v25, v12

    const-string v12, "FavouriteFarmer"

    if-ge v10, v0, :cond_24

    .line 1065
    :try_start_a
    new-instance v0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;-><init>()V

    iput-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    .line 1069
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v0, v15}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setTableName(Ljava/lang/String;)V

    .line 1070
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLMASTERVERSION()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3a

    move/from16 v26, v14

    const-string v14, ","

    move-object/from16 v27, v5

    const-string v5, "\'"

    if-eqz v0, :cond_5

    .line 1071
    :try_start_b
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    move-object/from16 v28, v7

    :try_start_c
    const-string v7, "UPDATE "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " SET "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1074
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1076
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v29
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    move-object/from16 v30, v6

    move-object v6, v12

    const/16 v31, 0x1

    move-object v12, v0

    :goto_5
    :try_start_d
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    if-eqz v0, :cond_4

    .line 1078
    :try_start_e
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    move-object/from16 v32, v9

    .line 1080
    :try_start_f
    const-string v9, "TableName"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    move-object/from16 v33, v3

    const-string v3, " = \'"

    if-eqz v9, :cond_2

    add-int/lit8 v31, v31, 0x1

    .line 1082
    :try_start_10
    iget-object v9, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v9, v0}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setColumnName(Ljava/lang/String;)V

    .line 1083
    iget-object v9, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    move/from16 v34, v13

    :try_start_11
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setSourceID(Ljava/lang/String;)V

    .line 1084
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " WHERE "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_8

    :cond_2
    move/from16 v34, v13

    add-int/lit8 v31, v31, 0x1

    .line 1088
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    :goto_6
    move/from16 v3, v31

    .line 1091
    :try_start_12
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    if-ne v3, v9, :cond_3

    .line 1094
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1095
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1096
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v17
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    const/16 v18, 0x1

    add-int/lit8 v9, v17, -0x1

    move/from16 v17, v3

    const/4 v3, 0x0

    :try_start_13
    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    .line 1100
    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    move-object v6, v0

    move-object v12, v3

    const/16 v31, 0x1

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v12, v3

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_7

    :cond_3
    move/from16 v17, v3

    move/from16 v31, v17

    goto :goto_a

    :catch_5
    move-exception v0

    move/from16 v17, v3

    :goto_7
    move/from16 v31, v17

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    move-object/from16 v33, v3

    goto :goto_8

    :catch_8
    move-exception v0

    move-object/from16 v33, v3

    move-object/from16 v32, v9

    :goto_8
    move/from16 v34, v13

    .line 1104
    :goto_9
    :try_start_15
    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11

    :goto_a
    move-object/from16 v9, v32

    move-object/from16 v3, v33

    move/from16 v13, v34

    goto/16 :goto_5

    :cond_4
    move-object/from16 v33, v3

    move-object/from16 v32, v9

    move/from16 v34, v13

    move-object/from16 v37, v2

    move-object/from16 v29, v8

    move/from16 v35, v10

    move-object/from16 v17, v11

    goto/16 :goto_27

    :catch_9
    move/from16 v34, v13

    move-object v10, v3

    goto/16 :goto_3a

    :catch_a
    move/from16 v34, v13

    move-object v10, v3

    move-object v3, v6

    move-object/from16 v14, v22

    move-object/from16 v2, v27

    move-object/from16 v7, v28

    goto/16 :goto_42

    :catch_b
    move/from16 v34, v13

    move-object v10, v3

    move-object v3, v6

    goto/16 :goto_3c

    :cond_5
    move-object/from16 v33, v3

    move-object/from16 v30, v6

    move-object/from16 v28, v7

    move-object/from16 v32, v9

    move/from16 v34, v13

    .line 1107
    :try_start_16
    const-string v0, "FarmerMultiAttributeDetails"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_37

    const-string v3, "RespondentNo"

    const-string v6, "FarmerID"

    const-string v7, "insert into "

    const-string v9, "values"

    const-string v13, "\',"

    move-object/from16 v17, v11

    const-string v11, ")"

    move-object/from16 v29, v8

    const-string v8, "("

    if-eqz v0, :cond_9

    .line 1108
    :try_start_17
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1113
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    move-object/from16 v12, v24

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11

    if-eqz v0, :cond_8

    .line 1115
    :try_start_18
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1116
    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_10

    move-object/from16 v31, v8

    .line 1118
    :try_start_19
    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_f

    move-object/from16 v35, v2

    :try_start_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1120
    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_e

    move-object/from16 v36, v14

    :try_start_1b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1122
    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v8, v0}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setColumnName(Ljava/lang/String;)V

    .line 1123
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setSourceID(Ljava/lang/String;)V

    goto :goto_e

    .line 1124
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1125
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1126
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d

    .line 1129
    :try_start_1c
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delete from FarmerMultiAttributeDetails where RespondentNo=\'"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_c

    move-object v12, v2

    goto :goto_e

    :catch_c
    move-exception v0

    move-object v12, v2

    goto :goto_d

    :catch_d
    move-exception v0

    goto :goto_d

    :catch_e
    move-exception v0

    goto :goto_c

    :catch_f
    move-exception v0

    move-object/from16 v35, v2

    goto :goto_c

    :catch_10
    move-exception v0

    move-object/from16 v35, v2

    move-object/from16 v31, v8

    :goto_c
    move-object/from16 v36, v14

    .line 1135
    :goto_d
    :try_start_1d
    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_e
    move-object/from16 v8, v31

    move-object/from16 v2, v35

    move-object/from16 v14, v36

    goto/16 :goto_b

    :cond_8
    move-object/from16 v35, v2

    .line 1138
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1139
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1142
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_11

    :goto_f
    move v7, v10

    :goto_10
    move-object/from16 v24, v12

    goto/16 :goto_2e

    :catch_11
    move-object/from16 v14, v22

    move-object/from16 v2, v27

    move-object/from16 v7, v28

    move-object/from16 v3, v30

    move-object/from16 v10, v33

    move/from16 v13, v34

    goto/16 :goto_42

    :cond_9
    move-object/from16 v35, v2

    move-object/from16 v36, v14

    .line 1146
    :try_start_1e
    const-string v0, "DealerMultiAttributeDetails"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_37

    if-eqz v0, :cond_c

    .line 1147
    :try_start_1f
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v35

    .line 1150
    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1152
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    move-object/from16 v7, v24

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_11

    if-eqz v0, :cond_b

    .line 1154
    :try_start_20
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1155
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    .line 1157
    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_15

    move-object/from16 v14, v36

    :try_start_21
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1159
    iget-object v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_14

    move-object/from16 v31, v6

    :try_start_22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    const-string v6, "ContactID"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1165
    iget-object v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setColumnName(Ljava/lang/String;)V

    .line 1166
    iget-object v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setSourceID(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1168
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_13

    .line 1171
    :try_start_23
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete from DealerMultiAttributeDetails where ContactID=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_12

    move-object v7, v6

    goto :goto_13

    :catch_12
    move-exception v0

    move-object v7, v6

    goto :goto_12

    :catch_13
    move-exception v0

    goto :goto_12

    :catch_14
    move-exception v0

    move-object/from16 v31, v6

    goto :goto_12

    :catch_15
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v14, v36

    .line 1177
    :goto_12
    :try_start_24
    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_13
    move-object/from16 v36, v14

    move-object/from16 v6, v31

    goto/16 :goto_11

    .line 1180
    :cond_b
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1181
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v12, 0x1

    sub-int/2addr v8, v12

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v12, 0x1

    sub-int/2addr v8, v12

    const/4 v12, 0x0

    invoke-virtual {v3, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1184
    iget-object v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_11

    move-object/from16 v35, v2

    move-object/from16 v24, v7

    move v7, v10

    goto/16 :goto_2e

    :cond_c
    move-object/from16 v2, v35

    move-object/from16 v14, v36

    .line 1188
    :try_start_25
    const-string v0, "FarmerCropDetails"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_37

    if-eqz v0, :cond_10

    .line 1189
    :try_start_26
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1194
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    move-object/from16 v12, v24

    :goto_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_11

    if-eqz v0, :cond_f

    .line 1196
    :try_start_27
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1a

    move-object/from16 v31, v8

    .line 1199
    :try_start_28
    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_19

    move-object/from16 v35, v2

    :try_start_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1201
    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_18

    move-object/from16 v36, v14

    :try_start_2a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1203
    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v8, v0}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setColumnName(Ljava/lang/String;)V

    .line 1204
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setSourceID(Ljava/lang/String;)V

    goto :goto_17

    .line 1205
    :cond_d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1206
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1207
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_17

    .line 1208
    :try_start_2b
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delete from FarmerCropDetails where RespondentNo=\'"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_16

    move-object v12, v2

    goto :goto_17

    :catch_16
    move-exception v0

    move-object v12, v2

    goto :goto_16

    :catch_17
    move-exception v0

    goto :goto_16

    :catch_18
    move-exception v0

    goto :goto_15

    :catch_19
    move-exception v0

    move-object/from16 v35, v2

    goto :goto_15

    :catch_1a
    move-exception v0

    move-object/from16 v35, v2

    move-object/from16 v31, v8

    :goto_15
    move-object/from16 v36, v14

    .line 1214
    :goto_16
    :try_start_2c
    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_17
    move-object/from16 v8, v31

    move-object/from16 v2, v35

    move-object/from16 v14, v36

    goto/16 :goto_14

    :cond_f
    move-object/from16 v35, v2

    .line 1217
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1218
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1221
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_11

    goto/16 :goto_f

    :cond_10
    move-object/from16 v35, v2

    move-object/from16 v36, v14

    .line 1225
    :try_start_2d
    const-string v0, "DealerLandDetails"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_37

    const-string v2, "ContactId"

    if-eqz v0, :cond_13

    .line 1226
    :try_start_2e
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v35

    .line 1229
    invoke-virtual {v14, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1231
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    move-object/from16 v7, v24

    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_11

    if-eqz v0, :cond_12

    .line 1233
    :try_start_2f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1234
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    .line 1236
    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_1e

    move-object/from16 v31, v6

    move-object/from16 v6, v36

    :try_start_30
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1238
    iget-object v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_1d

    move-object/from16 v36, v6

    :try_start_31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1240
    iget-object v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setColumnName(Ljava/lang/String;)V

    .line 1241
    iget-object v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setSourceID(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 1243
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_1c

    .line 1244
    :try_start_32
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete from DealerLandDetails where ContactId=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_1b

    move-object v7, v6

    goto :goto_1a

    :catch_1b
    move-exception v0

    move-object v7, v6

    goto :goto_19

    :catch_1c
    move-exception v0

    goto :goto_19

    :catch_1d
    move-exception v0

    move-object/from16 v36, v6

    goto :goto_19

    :catch_1e
    move-exception v0

    move-object/from16 v31, v6

    .line 1249
    :goto_19
    :try_start_33
    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    :goto_1a
    move-object/from16 v6, v31

    goto/16 :goto_18

    .line 1252
    :cond_12
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1253
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1256
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_11

    move-object/from16 v24, v7

    move v7, v10

    :goto_1b
    move-object/from16 v35, v14

    goto/16 :goto_2e

    :cond_13
    move-object/from16 v14, v35

    .line 1260
    :try_start_34
    const-string v0, "FarmerLandDetails"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_37

    if-eqz v0, :cond_17

    .line 1261
    :try_start_35
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    invoke-virtual {v14, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1266
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    move-object/from16 v8, v24

    :goto_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_11

    if-eqz v0, :cond_16

    .line 1268
    :try_start_36
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1269
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    .line 1271
    iget-object v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_23

    move-object/from16 v31, v7

    :try_start_37
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_22

    move/from16 v35, v10

    move-object/from16 v10, v36

    :try_start_38
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1273
    iget-object v12, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_21

    move-object/from16 v36, v10

    :try_start_39
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1275
    iget-object v10, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v10, v0}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setColumnName(Ljava/lang/String;)V

    .line 1276
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v0, v7}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setSourceID(Ljava/lang/String;)V

    goto :goto_1f

    .line 1277
    :cond_14
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1278
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 1279
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_20

    .line 1280
    :try_start_3a
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete from DealerLandDetails where RespondentNo=\'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_1f

    move-object v8, v7

    goto :goto_1f

    :catch_1f
    move-exception v0

    move-object v8, v7

    goto :goto_1e

    :catch_20
    move-exception v0

    goto :goto_1e

    :catch_21
    move-exception v0

    move-object/from16 v36, v10

    goto :goto_1e

    :catch_22
    move-exception v0

    goto :goto_1d

    :catch_23
    move-exception v0

    move-object/from16 v31, v7

    :goto_1d
    move/from16 v35, v10

    .line 1286
    :goto_1e
    :try_start_3b
    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_1f
    move-object/from16 v7, v31

    move/from16 v10, v35

    goto/16 :goto_1c

    :cond_16
    move/from16 v35, v10

    .line 1289
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1290
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1293
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_11

    move-object/from16 v24, v8

    move/from16 v7, v35

    goto/16 :goto_1b

    :cond_17
    move/from16 v35, v10

    .line 1297
    :try_start_3c
    const-string v0, "DealerCropMapping"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_37

    if-nez v0, :cond_1e

    :try_start_3d
    const-string v0, "DealerCompanyMapping"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_28

    .line 1334
    :cond_18
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insert or replace into "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v35

    .line 1337
    invoke-virtual {v14, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1339
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :goto_20
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_11

    if-eqz v0, :cond_1d

    .line 1341
    :try_start_3e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1342
    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_28

    move-object/from16 v31, v8

    .line 1344
    :try_start_3f
    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_27

    move/from16 v35, v10

    :try_start_40
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_26

    move-object/from16 v37, v14

    move-object/from16 v14, v36

    :try_start_41
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1346
    iget-object v10, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_25

    move-object/from16 v36, v7

    :try_start_42
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    invoke-virtual {v15, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1b

    const-string v7, "FavouriteFarmerAttribute"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    goto :goto_21

    .line 1353
    :cond_19
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1354
    :cond_1a
    iget-object v7, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v7, v0}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setColumnName(Ljava/lang/String;)V

    .line 1355
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v0, v8}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setSourceID(Ljava/lang/String;)V

    goto :goto_26

    .line 1348
    :cond_1b
    :goto_21
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1349
    iget-object v7, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v7, v0}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setColumnName(Ljava/lang/String;)V

    .line 1350
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v0, v8}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setSourceID(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_24

    goto :goto_26

    :catch_24
    move-exception v0

    goto :goto_25

    :catch_25
    move-exception v0

    goto :goto_24

    :catch_26
    move-exception v0

    goto :goto_23

    :catch_27
    move-exception v0

    goto :goto_22

    :catch_28
    move-exception v0

    move-object/from16 v31, v8

    :goto_22
    move/from16 v35, v10

    :goto_23
    move-object/from16 v37, v14

    move-object/from16 v14, v36

    :goto_24
    move-object/from16 v36, v7

    .line 1360
    :goto_25
    :try_start_43
    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    :goto_26
    move-object/from16 v8, v31

    move/from16 v10, v35

    move-object/from16 v7, v36

    move-object/from16 v36, v14

    move-object/from16 v14, v37

    goto/16 :goto_20

    :cond_1d
    move/from16 v35, v10

    move-object/from16 v37, v14

    .line 1363
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1364
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1367
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_11

    :goto_27
    move/from16 v7, v35

    move-object/from16 v35, v37

    goto/16 :goto_2e

    :cond_1e
    :goto_28
    move-object/from16 v37, v14

    move-object/from16 v14, v36

    .line 1299
    :try_start_44
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v35

    move-object/from16 v3, v37

    .line 1302
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 1304
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    move-object/from16 v12, v24

    :goto_29
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_37

    if-eqz v0, :cond_21

    .line 1306
    :try_start_45
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1307
    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_2d

    move-object/from16 v35, v3

    .line 1309
    :try_start_46
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_2c

    move-object/from16 v24, v10

    :try_start_47
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1311
    iget-object v10, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_2b

    move-object/from16 v36, v14

    :try_start_48
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 1313
    iget-object v10, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v10, v0}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setColumnName(Ljava/lang/String;)V

    .line 1314
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setSourceID(Ljava/lang/String;)V

    goto :goto_2d

    .line 1315
    :cond_1f
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1316
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1317
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_2a

    .line 1318
    :try_start_49
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delete from "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " where ContactId=\'"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_29

    move-object v12, v3

    goto :goto_2d

    :catch_29
    move-exception v0

    move-object v12, v3

    goto :goto_2c

    :catch_2a
    move-exception v0

    goto :goto_2c

    :catch_2b
    move-exception v0

    goto :goto_2b

    :catch_2c
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    move-object/from16 v35, v3

    :goto_2a
    move-object/from16 v24, v10

    :goto_2b
    move-object/from16 v36, v14

    .line 1323
    :goto_2c
    :try_start_4a
    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_11

    :cond_20
    :goto_2d
    move-object/from16 v10, v24

    move-object/from16 v3, v35

    move-object/from16 v14, v36

    goto/16 :goto_29

    :cond_21
    move-object/from16 v35, v3

    .line 1326
    :try_start_4b
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->keysBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1327
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->valuesBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1330
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 1371
    :goto_2e
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setQuery(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_37

    .line 1374
    :try_start_4c
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_36
    .catchall {:try_start_4c .. :try_end_4c} :catchall_2

    .line 1377
    :try_start_4d
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1378
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getSourceID()Ljava/lang/String;

    move-result-object v0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_32
    .catchall {:try_start_4d .. :try_end_4d} :catchall_2

    move-object/from16 v2, v29

    :try_start_4e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1379
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    if-eqz v0, :cond_22

    .line 1380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_31
    .catchall {:try_start_4e .. :try_end_4e} :catchall_2

    move-object/from16 v6, v17

    :try_start_4f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_30
    .catchall {:try_start_4f .. :try_end_4f} :catchall_2

    move/from16 v13, v34

    :try_start_50
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_2f
    .catchall {:try_start_50 .. :try_end_50} :catchall_0

    move-object/from16 v10, v33

    :try_start_51
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->specificMasterCount:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v3, v8, v9}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->showProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_2e
    .catchall {:try_start_51 .. :try_end_51} :catchall_1

    goto :goto_2f

    :catch_2e
    move-exception v0

    goto :goto_31

    :catchall_0
    move-exception v0

    move-object/from16 v10, v33

    goto/16 :goto_35

    :catch_2f
    move-exception v0

    move-object/from16 v10, v33

    goto :goto_31

    :catch_30
    move-exception v0

    goto :goto_30

    :cond_22
    move-object/from16 v6, v17

    move-object/from16 v10, v33

    move/from16 v13, v34

    :goto_2f
    move/from16 v14, v26

    move-object/from16 v5, v32

    goto/16 :goto_34

    :catch_31
    move-exception v0

    move-object/from16 v6, v17

    goto :goto_30

    :catch_32
    move-exception v0

    move-object/from16 v6, v17

    move-object/from16 v2, v29

    :goto_30
    move-object/from16 v10, v33

    move/from16 v13, v34

    :goto_31
    move-object v3, v0

    .line 1384
    :try_start_52
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v36

    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getColumnName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    .line 1385
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getSourceID()Ljava/lang/String;

    move-result-object v38

    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getTableName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    iget-object v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    .line 1386
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLMASTERVERSION()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v40, v3

    .line 1384
    invoke-virtual/range {v36 .. v42}, Lcom/conceptglobal/pmc/common/Queries;->insertIntoSyncErrorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1387
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getSourceID()Ljava/lang/String;

    move-result-object v0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_34
    .catchall {:try_start_52 .. :try_end_52} :catchall_1

    move-object/from16 v5, v32

    :try_start_53
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_33
    .catchall {:try_start_53 .. :try_end_53} :catchall_1

    move/from16 v14, v26

    goto :goto_33

    :catch_33
    move-exception v0

    goto :goto_32

    :catchall_1
    move-exception v0

    goto :goto_35

    :catch_34
    move-exception v0

    move-object/from16 v5, v32

    .line 1389
    :goto_32
    :try_start_54
    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v14, 0x0

    .line 1392
    :goto_33
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f1001b7

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1393
    invoke-static {v4, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_35
    .catchall {:try_start_54 .. :try_end_54} :catchall_1

    :goto_34
    move v3, v14

    goto :goto_37

    :catch_35
    move-exception v0

    goto :goto_36

    :catchall_2
    move-exception v0

    move-object/from16 v10, v33

    move/from16 v13, v34

    :goto_35
    move-object/from16 v14, v22

    goto/16 :goto_39

    :catch_36
    move-exception v0

    move-object/from16 v6, v17

    move-object/from16 v2, v29

    move-object/from16 v5, v32

    move-object/from16 v10, v33

    move/from16 v13, v34

    :goto_36
    move-object/from16 v3, v22

    .line 1399
    :try_start_55
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f1001b8

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1400
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_3

    move-object/from16 v22, v3

    const/4 v3, 0x0

    .line 1407
    :goto_37
    :try_start_56
    sget-boolean v0, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    if-eqz v0, :cond_23

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto :goto_38

    :cond_23
    move v14, v3

    move/from16 v12, v25

    .line 1411
    :goto_38
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1412
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_38

    add-int/lit8 v0, v7, 0x1

    move-object v8, v2

    move-object v9, v5

    move-object v11, v6

    move-object v3, v10

    move-object/from16 v5, v27

    move-object/from16 v7, v28

    move-object/from16 v6, v30

    move-object/from16 v2, v35

    move v10, v0

    goto/16 :goto_4

    :catchall_3
    move-exception v0

    move-object v14, v3

    .line 1405
    :goto_39
    :try_start_57
    throw v0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_39

    :catch_37
    move-object/from16 v10, v33

    move/from16 v13, v34

    :catch_38
    :goto_3a
    move-object/from16 v14, v22

    :catch_39
    move-object/from16 v2, v27

    move-object/from16 v7, v28

    move-object/from16 v3, v30

    goto/16 :goto_42

    :catch_3a
    move-object v10, v3

    move-object v2, v5

    move-object v3, v6

    goto/16 :goto_3d

    :cond_24
    move-object v10, v3

    move-object/from16 v27, v5

    move-object/from16 v30, v6

    move-object/from16 v28, v7

    move-object v2, v8

    move-object v5, v9

    move/from16 v26, v14

    .line 1416
    :try_start_58
    const-string v0, "FarmerMaster"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_3c

    if-eqz v0, :cond_25

    move-object/from16 v3, v30

    .line 1424
    :try_start_59
    invoke-virtual {v3, v2}, Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;->setFarmerIds(Ljava/util/List;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_3b

    move-object/from16 v7, v28

    .line 1425
    :try_start_5a
    invoke-virtual {v7, v5}, Lcom/conceptglobal/pmc/model/SendFailedAcknowledgeSDTV;->setFarmerIds(Ljava/util/List;)V

    goto :goto_3b

    :catch_3b
    move-object/from16 v7, v28

    goto :goto_3c

    :cond_25
    move-object/from16 v7, v28

    move-object/from16 v3, v30

    .line 1426
    const-string v0, "DealerMaster"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1427
    invoke-virtual {v3, v2}, Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;->setDealerIds(Ljava/util/List;)V

    .line 1428
    invoke-virtual {v7, v5}, Lcom/conceptglobal/pmc/model/SendFailedAcknowledgeSDTV;->setDealerIds(Ljava/util/List;)V

    goto :goto_3b

    .line 1429
    :cond_26
    const-string v0, "PMCTerritoryFarmerMaster"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1430
    invoke-virtual {v3, v2}, Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;->setTerritoryFarmerIds(Ljava/util/List;)V

    goto :goto_3b

    .line 1431
    :cond_27
    const-string v0, "PMCTerritoryDealerMaster"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1432
    invoke-virtual {v3, v2}, Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;->setTerritoryDealerIds(Ljava/util/List;)V

    goto :goto_3b

    .line 1433
    :cond_28
    invoke-virtual {v15, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1434
    invoke-virtual {v3, v2}, Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;->setFavouriteFarmerIds(Ljava/util/List;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_3d

    :cond_29
    :goto_3b
    move-object v6, v3

    move-object v3, v10

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v14, v22

    move-object/from16 v10, v23

    move/from16 v0, v25

    move/from16 v12, v26

    move-object/from16 v5, v27

    goto/16 :goto_3

    :catch_3c
    move-object/from16 v7, v28

    move-object/from16 v3, v30

    :catch_3d
    :goto_3c
    move-object/from16 v14, v22

    goto/16 :goto_3f

    :catch_3e
    move-object v10, v3

    move-object v3, v6

    move-object v2, v5

    :goto_3d
    move-object/from16 v14, v22

    goto/16 :goto_42

    :catch_3f
    move-object v10, v3

    move-object v3, v6

    goto :goto_3e

    :catch_40
    move-object/from16 v19, v2

    :catch_41
    move-object v10, v3

    move-object v3, v6

    move-object/from16 v20, v8

    :goto_3e
    move-object v2, v5

    goto/16 :goto_42

    :cond_2a
    move-object/from16 v19, v2

    move-object v10, v3

    move-object/from16 v27, v5

    move-object v3, v6

    move-object/from16 v20, v8

    move-object v6, v11

    .line 1438
    :try_start_5b
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1439
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1440
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    const/4 v2, 0x0

    .line 1441
    iput-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 1442
    iget v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->processedSyncCount:I

    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->processedSyncCount:I

    .line 1444
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    if-eqz v2, :cond_2b

    .line 1445
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->processedSyncCount:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->specificMasterCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v6, v8}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->showProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_42

    :cond_2b
    move-object/from16 v2, v27

    .line 1483
    :try_start_5c
    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/model/SendAckSdtv;->setAckList(Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;)V

    .line 1484
    invoke-virtual {v2, v7}, Lcom/conceptglobal/pmc/model/SendAckSdtv;->setFailedAckList(Lcom/conceptglobal/pmc/model/SendFailedAcknowledgeSDTV;)V

    goto :goto_40

    :catch_42
    :goto_3f
    move-object/from16 v2, v27

    goto/16 :goto_42

    :cond_2c
    move-object/from16 v19, v2

    move-object v10, v3

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v20, v8

    const/4 v0, 0x0

    goto :goto_40

    :cond_2d
    move-object/from16 v19, v2

    move-object v10, v3

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v20, v8

    .line 1529
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UNAUTHORISED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1530
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Invalid Token"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1532
    new-instance v5, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-direct {v5, v6, v8}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 1533
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 1535
    const-string v5, "com.conceptglobal.pmc.sync.MasterSync"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1536
    const-string v6, "doSpecificMasterSync"
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_44

    const/4 v8, 0x0

    :try_start_5d
    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_45

    const/4 v9, 0x1

    .line 1537
    :try_start_5e
    invoke-virtual {v6, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1538
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 1539
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    new-array v15, v9, [Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_46

    const/16 v16, 0x0

    :try_start_5f
    aput-object v11, v15, v16

    invoke-virtual {v6, v5, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_47

    goto :goto_41

    :cond_2e
    :goto_40
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v16, 0x0

    goto :goto_41

    :cond_2f
    move-object/from16 v19, v2

    move-object v10, v3

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v20, v8

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v16, 0x0

    const/4 v0, 0x0

    :goto_41
    move-object v5, v2

    move-object v6, v3

    move-object v3, v10

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    goto/16 :goto_0

    :catch_43
    move-object/from16 v19, v2

    move-object v10, v3

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v20, v8

    :catch_44
    :goto_42
    const/4 v8, 0x0

    :catch_45
    const/4 v9, 0x1

    :catch_46
    const/16 v16, 0x0

    .line 1554
    :catch_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1001b9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v5, v2

    move-object v6, v3

    move-object v3, v10

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    const/4 v0, 0x0

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_30
    move-object/from16 v19, v2

    move-object v10, v3

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v20, v8

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v16, 0x0

    .line 1559
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_CannotSyncAlertText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v5, v2

    move-object v3, v10

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1562
    :cond_31
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Master spfc end Time"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_32

    .line 1566
    :try_start_60
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    const-string v2, "1"

    const-string v3, "SyncCompleted"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTimeWithOutMills()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v3, v5}, Lcom/conceptglobal/pmc/common/Queries;->updatePatchDetailsQryWithTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 1567
    new-instance v0, Landroid/content/Intent;

    const-string v2, "MasterSyncUpdate"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1568
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Master sync Time - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTimeWithOutMills()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_48

    goto :goto_43

    :catch_48
    move-exception v0

    .line 1572
    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1576
    :cond_32
    :goto_43
    invoke-direct/range {p0 .. p1}, Lcom/conceptglobal/pmc/sync/MasterSync;->doGeoSpecificMasterSyncSDTV(Z)Z

    return v12
.end method

.method private getApprovalData()V
    .locals 8

    .line 2159
    const-string v0, "data"

    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getActivityAssignmentIds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2160
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getTransIds()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 2161
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_1

    goto/16 :goto_1

    .line 2165
    :cond_1
    :try_start_1
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 2166
    new-instance v4, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;

    invoke-direct {v4}, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;-><init>()V

    .line 2169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getActivityApproval()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2171
    new-instance v5, Lcom/conceptglobal/pmc/model/ActivityApprovalModel;

    invoke-direct {v5}, Lcom/conceptglobal/pmc/model/ActivityApprovalModel;-><init>()V

    .line 2172
    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->ListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/conceptglobal/pmc/model/ActivityApprovalModel;->setTransids(Ljava/lang/String;)V

    .line 2173
    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->ListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/conceptglobal/pmc/model/ActivityApprovalModel;->setActivityassignmentids(Ljava/lang/String;)V

    .line 2174
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/conceptglobal/pmc/model/ActivityApprovalModel;->setPDAID(Ljava/lang/String;)V

    .line 2175
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2177
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2179
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2181
    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "AUTHORISED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2182
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0xa

    if-le v1, v4, :cond_3

    .line 2183
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/sync/MasterSync;->decompressNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2184
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/conceptglobal/pmc/model/ExpensesRespMOdel;

    invoke-virtual {v3, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/ExpensesRespMOdel;

    const/4 v1, 0x0

    .line 2186
    :goto_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ExpensesRespMOdel;->getApprovlStatusExpensesModels()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2187
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    .line 2188
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ExpensesRespMOdel;->getApprovlStatusExpensesModels()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;->getTransId()Ljava/lang/String;

    move-result-object v4

    .line 2189
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ExpensesRespMOdel;->getApprovlStatusExpensesModels()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;->getIsApproved()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2190
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ExpensesRespMOdel;->getApprovlStatusExpensesModels()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;->getActivityassignmentid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2188
    invoke-virtual {v3, v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateActivityDetails(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2187
    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2196
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :catch_1
    move-exception v0

    .line 2199
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method private getDeleteData()V
    .locals 9

    .line 1693
    const-string v0, "data"

    const-string v1, "getDeleteData"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;

    invoke-direct {v3}, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;-><init>()V

    .line 1694
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 1695
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;->setPDAID(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1697
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1699
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodGetDelete()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    .line 1700
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    invoke-virtual {v6, v3, v7, v5}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    .line 1701
    new-instance v3, Ljava/io/StringReader;

    iget-object v5, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 1703
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1704
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AUTHORISED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1705
    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1707
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0xa

    if-le v3, v5, :cond_0

    .line 1708
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/sync/MasterSync;->deleteDataAfterResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 1711
    :cond_0
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    goto :goto_0

    .line 1714
    :cond_1
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UNAUTHORISED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1715
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Invalid Token"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1717
    new-instance v0, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 1718
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 1720
    const-string v0, "com.conceptglobal.pmc.sync.MasterSync"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x0

    .line 1721
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    .line 1722
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1723
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 1724
    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1729
    :try_start_2
    const-string v3, "Assignment Count"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-static {v3, v0, v1, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1733
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    const-string v4, "MasterSync"

    invoke-static {v4, v0, v1, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private getMandiPricesList()V
    .locals 4

    .line 2133
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 2134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMandiPricesServiceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?PdaId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&ViewType=mobile"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    .line 2136
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->webServices:Lcom/conceptglobal/pmc/asynctask/WebService;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendGetRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    .line 2137
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2138
    const-string v1, "Data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2140
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 2141
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/conceptglobal/pmc/model/PriceslistModel;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/PriceslistModel;

    if-eqz v0, :cond_0

    .line 2142
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "{}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2143
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/PriceslistModel;->getTable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2144
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    .line 2145
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getDeletePricesData()Ljava/lang/String;

    move-result-object v2

    .line 2144
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 2146
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/PriceslistModel;->getTable()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertMadiPricesIntoDb(Ljava/util/List;)V

    .line 2149
    :cond_0
    const-string v0, "response"

    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2152
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private getPMCFarmerDetailsFromServer()V
    .locals 19

    move-object/from16 v1, p0

    .line 276
    const-string v0, "0"

    const-string v2, "getSegOBJResp"

    const-string v3, "data"

    const-string v4, ""

    .line 0
    const-string v5, "Assignmetns End  --"

    const-string v6, "Assignmetns Start  --"

    .line 276
    const-string v7, "MasterSync"

    const-string v8, "getPMCFarmerDetailsFromServer"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Segmentation start Time"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget-boolean v9, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    .line 279
    iput-boolean v10, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->SyncAssignmentData:Z

    return-void

    .line 284
    :cond_0
    :try_start_0
    new-instance v9, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;

    invoke-direct {v9}, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;-><init>()V

    .line 285
    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    .line 286
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;->setPDAID(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v11, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 288
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 321
    :try_start_1
    const-string v13, "APICallsTimeDetails"

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    :catch_0
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v10

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v13

    invoke-virtual {v10, v13}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodGetSegmentationDetailsGeneric()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    .line 325
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v6

    iget-object v10, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    invoke-virtual {v6, v9, v10, v12}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 327
    :try_start_3
    const-string v12, "APICallsTimeDetails"

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 331
    :catch_1
    :try_start_4
    const-string v5, "getSegOBJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/StringUtils;->removeInvertedCommas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    .line 335
    new-instance v2, Ljava/io/StringReader;

    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v11, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 336
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v6

    const-string v9, "AUTHORISED"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 338
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_2

    .line 339
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 341
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/sync/MasterSync;->decompressNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;

    .line 343
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->getDataCount()I

    move-result v2

    iput v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->assignmentCoun:I

    .line 345
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 346
    :goto_0
    iget v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->assignmentCoun:I

    if-ge v2, v3, :cond_1

    .line 347
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Getting Assignment Data - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->assignmentCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->assignmentCoun:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v5, v6, v9}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->showProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    :cond_1
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->objAck:Lcom/conceptglobal/pmc/model/SendAckList;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmersList(Lcom/conceptglobal/pmc/model/GetSegmentationDetails;Lcom/conceptglobal/pmc/model/SendAckList;)Lcom/conceptglobal/pmc/model/SendAckList;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->objAck:Lcom/conceptglobal/pmc/model/SendAckList;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 352
    iput-boolean v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->SyncAssignmentData:Z

    .line 353
    iput-boolean v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    goto :goto_1

    .line 355
    :cond_3
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UNAUTHORISED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 356
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid Token"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 358
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    if-eqz v2, :cond_4

    .line 359
    const-string v3, "You are not authorized to get latest Data."

    invoke-virtual {v2, v3, v0, v0}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->showProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_4
    new-instance v0, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 362
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 364
    const-string v0, "com.conceptglobal.pmc.sync.MasterSync"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    .line 365
    invoke-virtual {v0, v8, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    .line 366
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 367
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 368
    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-static {v7, v0, v8, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 375
    iput-boolean v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    .line 376
    iput-boolean v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->SyncAssignmentData:Z

    .line 378
    :cond_5
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "segmentation end Time"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getPMCFarmerDetailsFromServerExpenses()V
    .locals 19

    move-object/from16 v1, p0

    .line 385
    const-string v0, "0"

    const-string v2, "getSegOBJResp"

    const-string v3, "data"

    const-string v4, ""

    .line 0
    const-string v5, "Assignmetns End  --"

    const-string v6, "Assignmetns Start  --"

    .line 385
    const-string v7, "MasterSync"

    const-string v8, "getPMCFarmerDetailsFromServer"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Segmentation start Time"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    sget-boolean v9, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    .line 388
    iput-boolean v10, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->SyncAssignmentDataExpenses:Z

    return-void

    .line 393
    :cond_0
    :try_start_0
    new-instance v9, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;

    invoke-direct {v9}, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;-><init>()V

    .line 394
    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    .line 395
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;->setPDAID(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v11, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 397
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 430
    :try_start_1
    const-string v13, "APICallsTimeDetails"

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 433
    :catch_0
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v10

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v13

    invoke-virtual {v10, v13}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getExpensesListBack()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    .line 434
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v6

    iget-object v10, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    invoke-virtual {v6, v9, v10, v12}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 436
    :try_start_3
    const-string v12, "APICallsTimeDetails"

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 440
    :catch_1
    :try_start_4
    const-string v5, "getSegOBJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/StringUtils;->removeInvertedCommas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    .line 444
    new-instance v2, Ljava/io/StringReader;

    iget-object v5, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v11, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 445
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v6

    const-string v9, "AUTHORISED"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 447
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_2

    .line 448
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 450
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/sync/MasterSync;->decompressNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 451
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;

    .line 452
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->getDataCount()I

    move-result v2

    iput v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->assignmentCoun:I

    .line 454
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 455
    :goto_0
    iget v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->assignmentCoun:I

    if-ge v2, v3, :cond_1

    .line 456
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Getting Assignment Data - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->assignmentCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->assignmentCoun:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v5, v6, v9}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->showProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 459
    :cond_1
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->objAck:Lcom/conceptglobal/pmc/model/SendAckList;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmersList(Lcom/conceptglobal/pmc/model/GetSegmentationDetails;Lcom/conceptglobal/pmc/model/SendAckList;)Lcom/conceptglobal/pmc/model/SendAckList;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->objAck:Lcom/conceptglobal/pmc/model/SendAckList;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 461
    iput-boolean v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->SyncAssignmentDataExpenses:Z

    .line 462
    iput-boolean v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    goto :goto_1

    .line 464
    :cond_3
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UNAUTHORISED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 465
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid Token"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 467
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    if-eqz v2, :cond_4

    .line 468
    const-string v3, "You are not authorized to get latest Data."

    invoke-virtual {v2, v3, v0, v0}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->showProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_4
    new-instance v0, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 471
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 473
    const-string v0, "com.conceptglobal.pmc.sync.MasterSync"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    .line 474
    invoke-virtual {v0, v8, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    .line 475
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 476
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 477
    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 483
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-static {v7, v0, v8, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 484
    iput-boolean v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    .line 485
    iput-boolean v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->SyncAssignmentDataExpenses:Z

    .line 487
    :cond_5
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "segmentation end Time"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getRetailersFromServer()V
    .locals 6

    .line 250
    const-string v0, "getRetailersFromServer"

    const-string v1, "MasterSync"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 252
    :try_start_0
    new-instance v2, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;-><init>()V

    .line 253
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 254
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getTeritoryId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;->setTerritoryId(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;->setPDAID(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodGetDealerList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    .line 258
    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->webServices:Lcom/conceptglobal/pmc/asynctask/WebService;

    invoke-virtual {v4, v2, v3}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-le v2, v3, :cond_0

    .line 261
    new-instance v2, Lcom/conceptglobal/pmc/sync/MasterSync$1;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/sync/MasterSync$1;-><init>(Lcom/conceptglobal/pmc/sync/MasterSync;)V

    .line 262
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/sync/MasterSync$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 263
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Ljava/io/StringReader;

    iget-object v5, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 264
    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->objAck:Lcom/conceptglobal/pmc/model/SendAckList;

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertRetailerList(Ljava/util/List;Lcom/conceptglobal/pmc/model/SendAckList;)Lcom/conceptglobal/pmc/model/SendAckList;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->objAck:Lcom/conceptglobal/pmc/model/SendAckList;

    goto :goto_0

    .line 266
    :cond_0
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 269
    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    :goto_0
    return-void
.end method

.method private getSVAssignPendingFromServer()V
    .locals 6

    .line 640
    const-string v0, "getSVAssignPendingFromServer"

    const-string v1, "MasterSync"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 643
    :try_start_0
    new-instance v2, Lcom/conceptglobal/pmc/model/SVAssignAFCount;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/model/SVAssignAFCount;-><init>()V

    .line 644
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 645
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/model/SVAssignAFCount;->setSvpdaid(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 648
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodGetAssignPendingDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    .line 649
    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->webServices:Lcom/conceptglobal/pmc/asynctask/WebService;

    invoke-virtual {v4, v2, v3}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 651
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-le v2, v3, :cond_0

    .line 653
    new-instance v2, Lcom/conceptglobal/pmc/sync/MasterSync$2;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/sync/MasterSync$2;-><init>(Lcom/conceptglobal/pmc/sync/MasterSync;)V

    .line 654
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/sync/MasterSync$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 656
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Ljava/io/StringReader;

    iget-object v5, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 657
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 658
    invoke-static {v2}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAssignFarmerActivityPendingCountDetails(Ljava/util/List;)V

    goto :goto_0

    .line 661
    :cond_0
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 664
    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 665
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private getTargetVsActualCount()V
    .locals 8

    .line 2015
    const-string v0, "getDeleteData"

    .line 0
    const-string v1, "{\"PDAID\":\""

    const/4 v2, 0x0

    .line 2015
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 2016
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2017
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2019
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodGetTargetVsActualCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    .line 2020
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    invoke-virtual {v5, v1, v6, v4}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    .line 2021
    new-instance v1, Ljava/io/StringReader;

    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 2023
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2024
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AUTHORISED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2025
    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2027
    const-string v1, "data"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2028
    invoke-direct {p0, v3}, Lcom/conceptglobal/pmc/sync/MasterSync;->updateTargetVsActualDetails(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 2030
    :cond_0
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    goto :goto_0

    .line 2033
    :cond_1
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UNAUTHORISED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2034
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Invalid Token"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2036
    new-instance v1, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 2037
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 2039
    const-string v1, "com.conceptglobal.pmc.sync.MasterSync"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    .line 2040
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    .line 2041
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2042
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 2043
    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2048
    :try_start_2
    const-string v3, "Assignment Count"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-static {v3, v1, v0, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 2052
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    const-string v4, "MasterSync"

    invoke-static {v4, v1, v0, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private sendAcktoServer()V
    .locals 6

    .line 492
    const-string v0, "sendAcktoServer"

    const-string v1, "MasterSync"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "segm ack start Time"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v0

    .line 496
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 497
    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->objAck:Lcom/conceptglobal/pmc/model/SendAckList;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/SendAckList;->setPDAID(Ljava/lang/String;)V

    .line 498
    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->objAck:Lcom/conceptglobal/pmc/model/SendAckList;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 499
    const-string v3, "getAckReceiptOBJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSendACK()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    .line 502
    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->webServices:Lcom/conceptglobal/pmc/asynctask/WebService;

    invoke-virtual {v4, v2, v3, v0}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 504
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1002c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 510
    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 512
    :cond_0
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "segm ack end Time"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendSDTVAcktoServer()V
    .locals 6

    .line 517
    const-string v0, "data"

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 518
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->objAckSDTv:Lcom/conceptglobal/pmc/model/SendAckSdtv;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/model/SendAckSdtv;->setPDAID(Ljava/lang/String;)V

    .line 519
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->objAckSDTv:Lcom/conceptglobal/pmc/model/SendAckSdtv;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSTDAck()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 521
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 522
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 523
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AUTHORISED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 525
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 528
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    goto :goto_0

    .line 530
    :cond_1
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UNAUTHORISED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid Token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    new-instance v0, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 534
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 536
    const-string v0, "com.conceptglobal.pmc.LoginActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 537
    const-string v1, "sendAcktoServer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    .line 538
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 539
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 540
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 545
    const-string v1, "MasterSync"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private sendSVAcktoServer()V
    .locals 5

    .line 580
    const-string v0, "sendSVAcktoServer"

    const-string v1, "MasterSync"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 583
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->objAcksv:Lcom/conceptglobal/pmc/model/SendAckListSV;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/model/SendAckListSV;->setPDAID(Ljava/lang/String;)V

    .line 584
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->objAcksv:Lcom/conceptglobal/pmc/model/SendAckListSV;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 585
    const-string v2, "getsvAckReceiptOBJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSVSendACK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    .line 588
    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->webServices:Lcom/conceptglobal/pmc/asynctask/WebService;

    invoke-virtual {v3, v0, v2}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 591
    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private sendSVApprovalAcktoServer()V
    .locals 5

    .line 624
    const-string v0, "sendSVApprovalAcktoServer"

    const-string v1, "MasterSync"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 627
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->objAcksvforApproval:Lcom/conceptglobal/pmc/model/SendSVAckForApproval;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/model/SendSVAckForApproval;->setPDAID(Ljava/lang/String;)V

    .line 628
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->objAcksvforApproval:Lcom/conceptglobal/pmc/model/SendSVAckForApproval;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSyncSendApprovalACK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    .line 631
    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->webServices:Lcom/conceptglobal/pmc/asynctask/WebService;

    invoke-virtual {v3, v0, v2}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 633
    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private sendSVApprovalFarmersRequest()V
    .locals 6

    .line 597
    const-string v0, "sendSVApprovalFarmersRequest"

    const-string v1, "MasterSync"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 599
    :try_start_0
    new-instance v2, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;-><init>()V

    .line 600
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 601
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;->setPdaid(Ljava/lang/String;)V

    .line 602
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getRoleID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;->setUsertype(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodGetSVFarmerApproval()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    .line 606
    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->webServices:Lcom/conceptglobal/pmc/asynctask/WebService;

    invoke-virtual {v4, v2, v3}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 608
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-le v2, v3, :cond_0

    .line 609
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    goto :goto_0

    .line 613
    :cond_0
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 616
    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 617
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    :goto_0
    return-void
.end method

.method private senddeleteAck()V
    .locals 9

    .line 1814
    const-string v0, "data"

    const-string v1, "senddeleteAck"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;

    invoke-direct {v3}, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;-><init>()V

    .line 1815
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 1816
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;->setPDAID(Ljava/lang/String;)V

    .line 1817
    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1818
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1820
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodGetDeleteAck()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    .line 1821
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    invoke-virtual {v6, v3, v7, v5}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    .line 1822
    new-instance v3, Ljava/io/StringReader;

    iget-object v5, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 1824
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1825
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AUTHORISED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1826
    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1828
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xa

    if-le v0, v3, :cond_0

    goto :goto_0

    .line 1832
    :cond_0
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    goto :goto_0

    .line 1835
    :cond_1
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UNAUTHORISED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1836
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Invalid Token"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1838
    new-instance v0, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 1839
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 1841
    const-string v0, "com.conceptglobal.pmc.sync.MasterSync"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x0

    .line 1842
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    .line 1843
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1844
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 1845
    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1850
    :try_start_2
    const-string v3, "Assignment Count"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-static {v3, v0, v1, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1854
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    const-string v4, "MasterSync"

    invoke-static {v4, v0, v1, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateTargetVsActualDetails(Lorg/json/JSONObject;)V
    .locals 24

    move-object/from16 v1, p0

    .line 2058
    const-string v2, ")"

    const-string v3, "("

    const-string v4, ""

    const-string v5, "MasterSync"

    .line 2060
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 2061
    sget-object v0, Lcom/conceptglobal/pmc/sync/MasterSync;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2062
    const-string v0, "data"

    move-object/from16 v7, p1

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    .line 2063
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 2064
    new-instance v9, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-direct {v9}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;-><init>()V

    .line 2065
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2066
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2067
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    .line 2069
    const-string v0, "insert or replace into ActivitySummaryDetails "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2070
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 2073
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v15, "\'"

    if-eqz v0, :cond_0

    .line 2075
    :try_start_1
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2076
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v3

    :try_start_2
    const-string v3, ","

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2077
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2078
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    .line 2080
    :goto_2
    :try_start_3
    invoke-static {v5, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    move-object/from16 v3, v16

    goto :goto_1

    :cond_0
    move-object/from16 v16, v3

    .line 2083
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2084
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2085
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2086
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v12

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2087
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2088
    const-string v0, "values"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2089
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setQuery(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2092
    :try_start_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2094
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2096
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    if-eqz v0, :cond_1

    .line 2097
    const-string v6, "Getting Summary Details  - "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v6, v11, v12}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->showProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v6, v0

    .line 2101
    :try_start_6
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v17

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2102
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getSourceID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2103
    invoke-virtual {v9}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "GetTargetVsActualCount"

    move-object/from16 v21, v6

    .line 2101
    invoke-virtual/range {v17 .. v23}, Lcom/conceptglobal/pmc/common/Queries;->insertIntoSyncErrorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catch_3
    move-exception v0

    .line 2106
    :try_start_7
    invoke-static {v5, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2108
    :goto_4
    invoke-static {v5, v6}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    .line 2111
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2117
    :cond_1
    :goto_5
    :try_start_9
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2118
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v16

    goto/16 :goto_0

    .line 2115
    :goto_6
    throw v0

    .line 2120
    :cond_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->arrQueries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2126
    sget-object v0, Lcom/conceptglobal/pmc/sync/MasterSync;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->isDatabaseOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    .line 2122
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "deleteDataAfterResponse"

    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    invoke-static {v5, v0, v2, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2123
    iput-boolean v2, v1, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2126
    sget-object v0, Lcom/conceptglobal/pmc/sync/MasterSync;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->isDatabaseOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2127
    :goto_7
    sget-object v0, Lcom/conceptglobal/pmc/sync/MasterSync;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    :cond_3
    return-void

    .line 2126
    :goto_8
    sget-object v2, Lcom/conceptglobal/pmc/sync/MasterSync;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->isDatabaseOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2127
    sget-object v2, Lcom/conceptglobal/pmc/sync/MasterSync;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 2128
    :cond_4
    throw v0
.end method


# virtual methods
.method public getPMCSVFarmerDetailsFromServer()V
    .locals 6

    .line 552
    const-string v0, "getPMCSVFarmerDetailsFromServer"

    const-string v1, "MasterSync"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 554
    :try_start_0
    new-instance v2, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;-><init>()V

    .line 555
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 556
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;->setPdaid(Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getRoleID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;->setUsertype(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodGetSVFarmerDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->urlString:Ljava/lang/String;

    .line 561
    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->webServices:Lcom/conceptglobal/pmc/asynctask/WebService;

    invoke-virtual {v4, v2, v3}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->response:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 563
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-le v2, v3, :cond_0

    .line 564
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    goto :goto_0

    .line 569
    :cond_0
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 573
    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 574
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    :goto_0
    return-void
.end method

.method public startMasterSync(Z)V
    .locals 8

    .line 167
    const-string v0, "0"

    new-instance v1, Lcom/conceptglobal/pmc/model/SendAckList;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/SendAckList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->objAck:Lcom/conceptglobal/pmc/model/SendAckList;

    .line 168
    new-instance v1, Lcom/conceptglobal/pmc/model/SendAckListSV;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/SendAckListSV;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->objAcksv:Lcom/conceptglobal/pmc/model/SendAckListSV;

    .line 169
    new-instance v1, Lcom/conceptglobal/pmc/model/SendSVAckForApproval;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/SendSVAckForApproval;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->objAcksvforApproval:Lcom/conceptglobal/pmc/model/SendSVAckForApproval;

    .line 171
    invoke-static {}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getInstance()Lcom/facebook/network/connectionclass/ConnectionClassManager;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->mConnectionClassManager:Lcom/facebook/network/connectionclass/ConnectionClassManager;

    .line 172
    invoke-static {}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->getInstance()Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->mDeviceBandwidthSampler:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    if-eqz p1, :cond_0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->mTask:Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;

    if-eqz v1, :cond_0

    .line 178
    const-string v2, "Sync Started"

    invoke-virtual {v1, v2, v0, v0}, Lcom/conceptglobal/pmc/sync/MasterSync$MasterSyncAsyncTask;->showProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->webServices:Lcom/conceptglobal/pmc/asynctask/WebService;

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->isSyncing:Z

    .line 190
    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->mDeviceBandwidthSampler:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    invoke-virtual {v1}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->startSampling()V

    .line 191
    :goto_0
    iget-boolean v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->SyncAssignmentData:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    if-nez v1, :cond_1

    .line 192
    new-instance v1, Lcom/conceptglobal/pmc/model/SendAckList;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/SendAckList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->objAck:Lcom/conceptglobal/pmc/model/SendAckList;

    .line 193
    iget v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->assignmentCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->assignmentCount:I

    .line 195
    invoke-direct {p0}, Lcom/conceptglobal/pmc/sync/MasterSync;->getPMCFarmerDetailsFromServer()V

    .line 197
    invoke-direct {p0}, Lcom/conceptglobal/pmc/sync/MasterSync;->sendAcktoServer()V

    goto :goto_0

    .line 200
    :cond_1
    iget-boolean v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->SyncAssignmentDataExpenses:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    if-nez v1, :cond_2

    .line 201
    new-instance v1, Lcom/conceptglobal/pmc/model/SendAckList;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/SendAckList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->objAck:Lcom/conceptglobal/pmc/model/SendAckList;

    .line 202
    iget v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->assignmentCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->assignmentCount:I

    .line 204
    invoke-direct {p0}, Lcom/conceptglobal/pmc/sync/MasterSync;->getPMCFarmerDetailsFromServerExpenses()V

    .line 206
    invoke-direct {p0}, Lcom/conceptglobal/pmc/sync/MasterSync;->sendAcktoServer()V

    .line 222
    :cond_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->mDeviceBandwidthSampler:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    invoke-virtual {v1}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->stopSampling()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    :try_start_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->mConnectionClassManager:Lcom/facebook/network/connectionclass/ConnectionClassManager;

    invoke-virtual {v1}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getCurrentBandwidthQuality()Lcom/facebook/network/connectionclass/ConnectionQuality;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/network/connectionclass/ConnectionQuality;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    const-string v2, "NetworkStatus"

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Master sync--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertLog4Trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    :catch_0
    :try_start_2
    invoke-direct {p0}, Lcom/conceptglobal/pmc/sync/MasterSync;->getMandiPricesList()V

    .line 230
    sget-boolean v1, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    if-nez v1, :cond_3

    .line 231
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/sync/MasterSync;->doMasterSync(Z)Z

    .line 232
    :cond_3
    sget-boolean p1, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    if-nez p1, :cond_4

    .line 233
    invoke-direct {p0}, Lcom/conceptglobal/pmc/sync/MasterSync;->getDeleteData()V

    .line 234
    :cond_4
    sget-boolean p1, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    if-nez p1, :cond_5

    .line 235
    new-instance p1, Lcom/conceptglobal/pmc/sync/DbPatch;

    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/MasterSync;->context:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/conceptglobal/pmc/sync/DbPatch;-><init>(Landroid/content/Context;Z)V

    .line 236
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/sync/DbPatch;->startDbPatch()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 243
    const-string v0, "MasterSync"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method
