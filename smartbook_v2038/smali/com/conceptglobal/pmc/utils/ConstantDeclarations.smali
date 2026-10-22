.class public Lcom/conceptglobal/pmc/utils/ConstantDeclarations;
.super Ljava/lang/Object;
.source "ConstantDeclarations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/utils/ConstantDeclarations$Enumaration;
    }
.end annotation


# static fields
.field public static final A_Z:I = 0x7

.field public static DatabaseLocation:I = 0x2

.field public static final FLAVOR_BIOSEED:Ljava/lang/String; = "bioseed"

.field public static final FLAVOR_PMC:Ljava/lang/String; = "pmc"

.field public static final FLAVOR_PROFARM:Ljava/lang/String; = "profarm"

.field public static final ID_EXTRA_KEY:Ljava/lang/String; = "notificationId"

.field public static final MESSAGE_EXTRA_KEY:Ljava/lang/String; = "message"

.field public static MediaLocation:I = 0x2

.field public static final PERSISTENT_TRACKING_ID:I = 0x1

.field public static final PII_SALES_HIGHTOLOW:I = 0x5

.field public static final PII_SALES_LOWTOHIGH:I = 0x6

.field public static final REPEAT_TIME:J = 0xea60L

.field public static final RULES_FARMER_ID:I = 0x2711

.field public static final SALES_HIGHTOLOW:I = 0x4

.field public static final SALES_LOWTOHIGH:I = 0x3

.field public static final SEGMENT_HIGHTOLOW:I = 0x2

.field public static final SEGMENT_LOWTOHIGH:I = 0x1

.field public static final Z_A:I = 0x8

.field public static imeiFilePath:Ljava/lang/String;

.field private static instance:Lcom/conceptglobal/pmc/utils/ConstantDeclarations;


# instance fields
.field private KeySegmentTypeId:Ljava/lang/String;

.field private childSetSharedPref:Ljava/lang/String;

.field private comma:Ljava/lang/String;

.field private databasePath:Ljava/lang/String;

.field private databasePathLOG:Ljava/lang/String;

.field private databasePathold:Ljava/lang/String;

.field private databasePatholdPII:Ljava/lang/String;

.field private dbDownloadPaths:Ljava/lang/String;

.field private dbFolder:Ljava/lang/String;

.field private dbLOGFolder:Ljava/lang/String;

.field private dbName:Ljava/lang/String;

.field private empty:Ljava/lang/String;

.field private externalRenamedbFolder:Ljava/lang/String;

.field private fwdSlash:Ljava/lang/String;

.field private getAppPath:Ljava/lang/String;

.field private idleTimeAppPatch:I

.field private idleTimeMasterSync:I

.field private keyActivityId:Ljava/lang/String;

.field private keyContentSyncTime:Ljava/lang/String;

.field private keyFarmerId:Ljava/lang/String;

.field private keyFarmerName:Ljava/lang/String;

.field private keyFoName:Ljava/lang/String;

.field private keyIsMba:Ljava/lang/String;

.field private keyIsPlanned:Ljava/lang/String;

.field private keyLastUpdatedTime:Ljava/lang/String;

.field private keyLastUpdatedTime1:Ljava/lang/String;

.field private keyMode:Ljava/lang/String;

.field private keyRetailerId:Ljava/lang/String;

.field private keyRetailerName:Ljava/lang/String;

.field private keySelection:Ljava/lang/String;

.field private keySelectionQuery:Ljava/lang/String;

.field private keyTicketVisibility:Ljava/lang/String;

.field private keyTrainingORLive:Ljava/lang/String;

.field private keyVillageId:Ljava/lang/String;

.field private keyVillageName:Ljava/lang/String;

.field private keyfromwhichclass:Ljava/lang/String;

.field private keymarketname:Ljava/lang/String;

.field private pdfFolder:Ljava/lang/String;

.field private pdfStoragePath:Ljava/lang/String;

.field private picFolder:Ljava/lang/String;

.field private picStoragePath:Ljava/lang/String;

.field private pmcLOGRootFolder:Ljava/lang/String;

.field private pmcRootFolder:Ljava/lang/String;

.field private pmcRootFolderAfterMygration:Ljava/lang/String;

.field private tblAssaignmentVisit:Ljava/lang/String;

.field private tblAssighmentActivityDetails:Ljava/lang/String;

.field private tblDealerCompanyMapping:Ljava/lang/String;

.field private tblDealerCropMapping:Ljava/lang/String;

.field private tblDealerMaster:Ljava/lang/String;

.field private tblFarmerCropMapping:Ljava/lang/String;

.field private tblFarmerDetails:Ljava/lang/String;

.field private tblFarmerMaster:Ljava/lang/String;

.field private tblLog4Net:Ljava/lang/String;

.field private tblMasterVersionTrackingSystem:Ljava/lang/String;

.field private tblSyncErrorLog:Ljava/lang/String;

.field private tblVillages:Ljava/lang/String;

.field private tblsvFarmerCropMapping:Ljava/lang/String;

.field private tblsvFarmerDetails:Ljava/lang/String;

.field private tempFolder:Ljava/lang/String;

.field private tempPath:Ljava/lang/String;

.field private trainingDBFolder:Ljava/lang/String;

.field private trainingDatabasePath:Ljava/lang/String;

.field private videoFolder:Ljava/lang/String;

.field private videoStoragePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.imei.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->imeiFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->empty:Ljava/lang/String;

    .line 21
    const-string v0, "/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->fwdSlash:Ljava/lang/String;

    .line 22
    const-string v1, ","

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->comma:Ljava/lang/String;

    .line 24
    const-string v1, "villageId"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyVillageId:Ljava/lang/String;

    .line 25
    const-string v1, "villageName"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyVillageName:Ljava/lang/String;

    .line 26
    const-string v1, "farmerName"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyFarmerName:Ljava/lang/String;

    .line 27
    const-string v1, "marketname"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keymarketname:Ljava/lang/String;

    .line 28
    const-string v1, "ismba"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyIsMba:Ljava/lang/String;

    .line 50
    const-string v1, "farmerId"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyFarmerId:Ljava/lang/String;

    .line 51
    const-string v1, "ActvityId"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyActivityId:Ljava/lang/String;

    .line 52
    const-string v1, "isPlanned"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyIsPlanned:Ljava/lang/String;

    .line 53
    const-string v1, "retailerId"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyRetailerId:Ljava/lang/String;

    .line 54
    const-string v1, "retailerName"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyRetailerName:Ljava/lang/String;

    .line 55
    const-string v1, "foName"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyFoName:Ljava/lang/String;

    .line 56
    const-string v1, "CMSyncTime"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyContentSyncTime:Ljava/lang/String;

    .line 57
    const-string v1, "TicketVisibility"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyTicketVisibility:Ljava/lang/String;

    .line 58
    const-string v1, "lastUpdatedTime"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyLastUpdatedTime:Ljava/lang/String;

    .line 59
    const-string v2, "Mode"

    iput-object v2, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyMode:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyLastUpdatedTime1:Ljava/lang/String;

    .line 61
    const-string v1, "TrainingORLive"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyTrainingORLive:Ljava/lang/String;

    const v1, 0x5265c00

    .line 62
    iput v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->idleTimeAppPatch:I

    const v1, 0xea60

    .line 63
    iput v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->idleTimeMasterSync:I

    .line 65
    const-string v1, "tblpmcs.db"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->dbName:Ljava/lang/String;

    .line 66
    const-string v1, "MasterVersionTrackingSystem"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblMasterVersionTrackingSystem:Ljava/lang/String;

    .line 67
    const-string v1, "pmcVillages"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblVillages:Ljava/lang/String;

    .line 68
    const-string v1, "pmcFarmerDetails"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblFarmerDetails:Ljava/lang/String;

    .line 70
    const-string v1, "pmcAssignmentVisit"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblAssaignmentVisit:Ljava/lang/String;

    .line 71
    const-string v1, "FarmerCropDetails"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblFarmerCropMapping:Ljava/lang/String;

    .line 72
    const-string v1, "pmcAssignmentActivityDetails"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblAssighmentActivityDetails:Ljava/lang/String;

    .line 73
    const-string v1, "FarmerMaster"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblFarmerMaster:Ljava/lang/String;

    .line 74
    const-string v1, "DealerMaster"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblDealerMaster:Ljava/lang/String;

    .line 75
    const-string v1, "DealerCompanyMapping"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblDealerCompanyMapping:Ljava/lang/String;

    .line 76
    const-string v1, "DealerCropMapping"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblDealerCropMapping:Ljava/lang/String;

    .line 77
    const-string v1, "ChildSetDataSharedPref"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->childSetSharedPref:Ljava/lang/String;

    .line 101
    const-string v1, "log4Net"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblLog4Net:Ljava/lang/String;

    .line 102
    const-string v1, "SyncErrorLog"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblSyncErrorLog:Ljava/lang/String;

    .line 128
    const-string v1, "pmcSVFarmerDetails"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblsvFarmerDetails:Ljava/lang/String;

    .line 129
    const-string v1, "pmcSVFarmerCropMapping"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblsvFarmerCropMapping:Ljava/lang/String;

    .line 131
    const-string v1, "fromwhichclass"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyfromwhichclass:Ljava/lang/String;

    .line 195
    const-string v1, "PMCLivedeepakfertilizers"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pmcRootFolder:Ljava/lang/String;

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pmcRootFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Migration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pmcRootFolderAfterMygration:Ljava/lang/String;

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/PMCPatch/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getAppPath:Ljava/lang/String;

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pmcRootFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->dbFolder:Ljava/lang/String;

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pmcRootFolderAfterMygration:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->externalRenamedbFolder:Ljava/lang/String;

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->dbFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/pmc.sqlite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->databasePath:Ljava/lang/String;

    .line 203
    const-string v1, "/PMC"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->databasePathold:Ljava/lang/String;

    .line 204
    const-string v1, "/PMCPII"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->databasePatholdPII:Ljava/lang/String;

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->dbFolder:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Training"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->trainingDBFolder:Ljava/lang/String;

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->trainingDBFolder:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->trainingDatabasePath:Ljava/lang/String;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->dbFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->dbDownloadPaths:Ljava/lang/String;

    .line 209
    const-string v1, "Selection"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keySelection:Ljava/lang/String;

    .line 210
    const-string v1, "Selection_query"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keySelectionQuery:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pmcRootFolder:Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pmcLOGRootFolder:Ljava/lang/String;

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pmcLOGRootFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/DatabaseDebug"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->dbLOGFolder:Ljava/lang/String;

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->dbLOGFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/aop.sqlite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->databasePathLOG:Ljava/lang/String;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pmcRootFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Pictures"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->picFolder:Ljava/lang/String;

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pmcRootFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tempFolder:Ljava/lang/String;

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pmcRootFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/pdfs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pdfFolder:Ljava/lang/String;

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/FileUtils;->getPicDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->picFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->picStoragePath:Ljava/lang/String;

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/FileUtils;->getPDFlocationsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pdfFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pdfStoragePath:Ljava/lang/String;

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/FileUtils;->getPicDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tempFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tempPath:Ljava/lang/String;

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pmcRootFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/videos"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->videoFolder:Ljava/lang/String;

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->videoFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->videoStoragePath:Ljava/lang/String;

    .line 493
    const-string v0, "segmentId"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->KeySegmentTypeId:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;
    .locals 1

    .line 13
    sget-object v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->instance:Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->instance:Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    .line 16
    :cond_0
    sget-object v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->instance:Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    return-object v0
.end method


# virtual methods
.method public getCOMMA()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->comma:Ljava/lang/String;

    return-object v0
.end method

.method public getChildSetSharedPref()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->childSetSharedPref:Ljava/lang/String;

    return-object v0
.end method

.method public getDBDOWNLOADPATH()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->dbDownloadPaths:Ljava/lang/String;

    return-object v0
.end method

.method public getDBNAME()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseFolder()Ljava/lang/String;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->dbFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabasePath()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->databasePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabasePathLOG()Ljava/lang/String;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->databasePathLOG:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabasePathold()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->databasePathold:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabasePatholdPII()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->databasePatholdPII:Ljava/lang/String;

    return-object v0
.end method

.method public getEMPTY()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->empty:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalNewRootFolderName()Ljava/lang/String;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pmcRootFolderAfterMygration:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalRenamedbFolder()Ljava/lang/String;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->externalRenamedbFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getFWDSLASH()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->fwdSlash:Ljava/lang/String;

    return-object v0
.end method

.method public getGETAPPPATH()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getAppPath:Ljava/lang/String;

    return-object v0
.end method

.method public getIDEALTIMEFORAPPPATCH()I
    .locals 1

    .line 333
    iget v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->idleTimeAppPatch:I

    return v0
.end method

.method public getIDEALTIMEFORFARMERSSYNC()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->idleTimeMasterSync:I

    return v0
.end method

.method public getKEYACTIVITYID()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyActivityId:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYFARMERID()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyFarmerId:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYFARMERNAME()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyFarmerName:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYFONAME()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyFoName:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYISPLANNED()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyIsPlanned:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYLASTRETAILERSUPDATEDTIME()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyLastUpdatedTime1:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYLASTUPDATEDTIME()Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyLastUpdatedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYRETAILERID()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyRetailerId:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYRETAILERNAME()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyRetailerName:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYSELECTION()Ljava/lang/String;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keySelection:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYSELECTIONQUERY()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keySelectionQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYVILLAGEID()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyVillageId:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYVILLAGENAME()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyVillageName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyContentSyncTime()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyContentSyncTime:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyIsMba()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyIsMba:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyMode()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyMode:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySegmentTypeId()Ljava/lang/String;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->KeySegmentTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyTicketVisibility()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyTicketVisibility:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyTrainingORLive()Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyTrainingORLive:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyfromwhichclass()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyfromwhichclass:Ljava/lang/String;

    return-object v0
.end method

.method public getKeymarketname()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keymarketname:Ljava/lang/String;

    return-object v0
.end method

.method public getPdfStoragePath()Ljava/lang/String;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pdfStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPicFolder()Ljava/lang/String;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->picFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getPicStoragePath()Ljava/lang/String;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->picStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPmcRootFolder()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pmcRootFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getRootFolderName()Ljava/lang/String;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pmcRootFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getRootfolderName()Ljava/lang/String;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->pmcRootFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getTBLASSIGNMENTVISITDETAILS()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblAssaignmentVisit:Ljava/lang/String;

    return-object v0
.end method

.method public getTBLCROPMAPPING()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblFarmerCropMapping:Ljava/lang/String;

    return-object v0
.end method

.method public getTBLFARMERS()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblFarmerDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getTBLLOG4NET()Ljava/lang/String;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblLog4Net:Ljava/lang/String;

    return-object v0
.end method

.method public getTBLMASTERVERSION()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblMasterVersionTrackingSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getTBLSYNCERRORLOG()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblSyncErrorLog:Ljava/lang/String;

    return-object v0
.end method

.method public getTBLVILLAGES()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblVillages:Ljava/lang/String;

    return-object v0
.end method

.method public getTblAssighmentActivityDetails()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblAssighmentActivityDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getTblDealerCompanyMapping()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblDealerCompanyMapping:Ljava/lang/String;

    return-object v0
.end method

.method public getTblDealerCropMapping()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblDealerCropMapping:Ljava/lang/String;

    return-object v0
.end method

.method public getTblDealerMaster()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblDealerMaster:Ljava/lang/String;

    return-object v0
.end method

.method public getTblFarmerMaster()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblFarmerMaster:Ljava/lang/String;

    return-object v0
.end method

.method public getTblsvFarmerCropMapping()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblsvFarmerCropMapping:Ljava/lang/String;

    return-object v0
.end method

.method public getTblsvFarmerDetails()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblsvFarmerDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getTempPath()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tempPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainingDBFolder()Ljava/lang/String;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->trainingDBFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainingDatabasePath()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->trainingDatabasePath:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoStoragePath()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->videoStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public setChildSetSharedPref(Ljava/lang/String;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->childSetSharedPref:Ljava/lang/String;

    return-void
.end method

.method public setDatabasePathLOG(Ljava/lang/String;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->databasePathLOG:Ljava/lang/String;

    return-void
.end method

.method public setKeyIsMba(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyIsMba:Ljava/lang/String;

    return-void
.end method

.method public setKeyfromwhichclass(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keyfromwhichclass:Ljava/lang/String;

    return-void
.end method

.method public setKeymarketname(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->keymarketname:Ljava/lang/String;

    return-void
.end method

.method public setTblDealerCompanyMapping(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblDealerCompanyMapping:Ljava/lang/String;

    return-void
.end method

.method public setTblDealerCropMapping(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblDealerCropMapping:Ljava/lang/String;

    return-void
.end method

.method public setTblDealerMaster(Ljava/lang/String;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblDealerMaster:Ljava/lang/String;

    return-void
.end method

.method public setTblFarmerMaster(Ljava/lang/String;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblFarmerMaster:Ljava/lang/String;

    return-void
.end method

.method public setTblsvFarmerCropMapping(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblsvFarmerCropMapping:Ljava/lang/String;

    return-void
.end method

.method public setTblsvFarmerDetails(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->tblsvFarmerDetails:Ljava/lang/String;

    return-void
.end method
