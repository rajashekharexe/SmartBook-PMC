.class public Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;
.super Ljava/lang/Object;
.source "ConstantDeclarations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations$Enumaration;
    }
.end annotation


# static fields
.field public static final SERVICE_STATUS_FINISHED:I = 0x1

.field public static final SERVICE_STATUS_FINISHED1:I = 0x2

.field public static final SERVICE_STATUS_RUNNING:I

.field private static instance:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;


# instance fields
.field private KeySegmentTypeId:Ljava/lang/String;

.field private childSetSharedPref:Ljava/lang/String;

.field private comma:Ljava/lang/String;

.field private databasePath:Ljava/lang/String;

.field private databasePathLOG:Ljava/lang/String;

.field private dbDownloadPaths:Ljava/lang/String;

.field private dbFolder:Ljava/lang/String;

.field private dbLOGFolder:Ljava/lang/String;

.field private dbName:Ljava/lang/String;

.field private empty:Ljava/lang/String;

.field private fwdSlash:Ljava/lang/String;

.field private getAppPath:Ljava/lang/String;

.field private idleTimeAppPatch:I

.field private idleTimeMasterSync:I

.field private keyActivityId:Ljava/lang/String;

.field private keyFarmerId:Ljava/lang/String;

.field private keyFarmerName:Ljava/lang/String;

.field private keyFoName:Ljava/lang/String;

.field private keyIsMba:Ljava/lang/String;

.field private keyIsPlanned:Ljava/lang/String;

.field private keyLastUpdatedTime:Ljava/lang/String;

.field private keyLastUpdatedTime1:Ljava/lang/String;

.field private keyRetailerId:Ljava/lang/String;

.field private keyRetailerName:Ljava/lang/String;

.field private keySelection:Ljava/lang/String;

.field private keySelectionQuery:Ljava/lang/String;

.field private keyTrainingORLive:Ljava/lang/String;

.field private keyVillageId:Ljava/lang/String;

.field private keyVillageName:Ljava/lang/String;

.field private keyfromwhichclass:Ljava/lang/String;

.field private keymarketname:Ljava/lang/String;

.field private picFolder:Ljava/lang/String;

.field private picStoragePath:Ljava/lang/String;

.field private pmcLOGRootFolder:Ljava/lang/String;

.field private pmcRootFolder:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->empty:Ljava/lang/String;

    .line 21
    const-string v0, "/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->fwdSlash:Ljava/lang/String;

    .line 22
    const-string v1, ","

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->comma:Ljava/lang/String;

    .line 24
    const-string v1, "villageId"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyVillageId:Ljava/lang/String;

    .line 25
    const-string v1, "villageName"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyVillageName:Ljava/lang/String;

    .line 26
    const-string v1, "farmerName"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyFarmerName:Ljava/lang/String;

    .line 27
    const-string v1, "marketname"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keymarketname:Ljava/lang/String;

    .line 28
    const-string v1, "ismba"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyIsMba:Ljava/lang/String;

    .line 50
    const-string v1, "farmerId"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyFarmerId:Ljava/lang/String;

    .line 51
    const-string v1, "ActvityId"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyActivityId:Ljava/lang/String;

    .line 52
    const-string v1, "isPlanned"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyIsPlanned:Ljava/lang/String;

    .line 53
    const-string v1, "retailerId"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyRetailerId:Ljava/lang/String;

    .line 54
    const-string v1, "retailerName"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyRetailerName:Ljava/lang/String;

    .line 55
    const-string v1, "foName"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyFoName:Ljava/lang/String;

    .line 56
    const-string v1, "lastUpdatedTime"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyLastUpdatedTime:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyLastUpdatedTime1:Ljava/lang/String;

    .line 58
    const-string v1, "TrainingORLive"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyTrainingORLive:Ljava/lang/String;

    const v1, 0x5265c00

    .line 59
    iput v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->idleTimeAppPatch:I

    const v1, 0xea60

    .line 60
    iput v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->idleTimeMasterSync:I

    .line 62
    const-string v1, "tblpmcs.db"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->dbName:Ljava/lang/String;

    .line 63
    const-string v1, "MasterVersionTrackingSystem"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblMasterVersionTrackingSystem:Ljava/lang/String;

    .line 64
    const-string v1, "pmcVillages"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblVillages:Ljava/lang/String;

    .line 65
    const-string v1, "pmcFarmerDetails"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblFarmerDetails:Ljava/lang/String;

    .line 67
    const-string v1, "pmcAssignmentVisit"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblAssaignmentVisit:Ljava/lang/String;

    .line 68
    const-string v1, "FarmerCropDetails"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblFarmerCropMapping:Ljava/lang/String;

    .line 69
    const-string v1, "pmcAssignmentActivityDetails"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblAssighmentActivityDetails:Ljava/lang/String;

    .line 70
    const-string v1, "FarmerMaster"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblFarmerMaster:Ljava/lang/String;

    .line 71
    const-string v1, "DealerMaster"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblDealerMaster:Ljava/lang/String;

    .line 72
    const-string v1, "DealerCompanyMapping"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblDealerCompanyMapping:Ljava/lang/String;

    .line 73
    const-string v1, "DealerCropMapping"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblDealerCropMapping:Ljava/lang/String;

    .line 74
    const-string v1, "ChildSetDataSharedPref"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->childSetSharedPref:Ljava/lang/String;

    .line 82
    const-string v1, "log4Net"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblLog4Net:Ljava/lang/String;

    .line 83
    const-string v1, "SyncErrorLog"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblSyncErrorLog:Ljava/lang/String;

    .line 103
    const-string v1, "pmcSVFarmerDetails"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblsvFarmerDetails:Ljava/lang/String;

    .line 104
    const-string v1, "pmcSVFarmerCropMapping"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblsvFarmerCropMapping:Ljava/lang/String;

    .line 106
    const-string v1, "fromwhichclass"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyfromwhichclass:Ljava/lang/String;

    .line 151
    const-string v1, "PMC"

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->pmcRootFolder:Ljava/lang/String;

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/PMCPatch/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getAppPath:Ljava/lang/String;

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->pmcRootFolder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Database"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->dbFolder:Ljava/lang/String;

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->dbFolder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/pmc.sqlite"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->databasePath:Ljava/lang/String;

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->dbFolder:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Training"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->trainingDBFolder:Ljava/lang/String;

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->trainingDBFolder:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->trainingDatabasePath:Ljava/lang/String;

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->dbFolder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->dbDownloadPaths:Ljava/lang/String;

    .line 161
    const-string v2, "Selection"

    iput-object v2, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keySelection:Ljava/lang/String;

    .line 162
    const-string v2, "Selection_query"

    iput-object v2, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keySelectionQuery:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->pmcLOGRootFolder:Ljava/lang/String;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->pmcLOGRootFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/DatabaseDebug"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->dbLOGFolder:Ljava/lang/String;

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->dbLOGFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/aop.sqlite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->databasePathLOG:Ljava/lang/String;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->pmcRootFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Pictures"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->picFolder:Ljava/lang/String;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->pmcRootFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tempFolder:Ljava/lang/String;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/FileUtils;->getPicDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->picFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->picStoragePath:Ljava/lang/String;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/FileUtils;->getPicDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tempFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tempPath:Ljava/lang/String;

    .line 389
    const-string v0, "segmentId"

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->KeySegmentTypeId:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;
    .locals 1

    .line 13
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->instance:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->instance:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    .line 16
    :cond_0
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->instance:Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;

    return-object v0
.end method


# virtual methods
.method public getCOMMA()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->comma:Ljava/lang/String;

    return-object v0
.end method

.method public getChildSetSharedPref()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->childSetSharedPref:Ljava/lang/String;

    return-object v0
.end method

.method public getDBDOWNLOADPATH()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->dbDownloadPaths:Ljava/lang/String;

    return-object v0
.end method

.method public getDBNAME()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseFolder()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->dbFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabasePath()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->databasePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabasePathLOG()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->databasePathLOG:Ljava/lang/String;

    return-object v0
.end method

.method public getEMPTY()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->empty:Ljava/lang/String;

    return-object v0
.end method

.method public getFWDSLASH()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->fwdSlash:Ljava/lang/String;

    return-object v0
.end method

.method public getGETAPPPATH()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->getAppPath:Ljava/lang/String;

    return-object v0
.end method

.method public getIDEALTIMEFORAPPPATCH()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->idleTimeAppPatch:I

    return v0
.end method

.method public getIDEALTIMEFORFARMERSSYNC()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->idleTimeMasterSync:I

    return v0
.end method

.method public getKEYACTIVITYID()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyActivityId:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYFARMERID()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyFarmerId:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYFARMERNAME()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyFarmerName:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYFONAME()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyFoName:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYISPLANNED()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyIsPlanned:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYLASTRETAILERSUPDATEDTIME()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyLastUpdatedTime1:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYLASTUPDATEDTIME()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyLastUpdatedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYRETAILERID()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyRetailerId:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYRETAILERNAME()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyRetailerName:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYSELECTION()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keySelection:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYSELECTIONQUERY()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keySelectionQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYVILLAGEID()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyVillageId:Ljava/lang/String;

    return-object v0
.end method

.method public getKEYVILLAGENAME()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyVillageName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyIsMba()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyIsMba:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySegmentTypeId()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->KeySegmentTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyTrainingORLive()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyTrainingORLive:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyfromwhichclass()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyfromwhichclass:Ljava/lang/String;

    return-object v0
.end method

.method public getKeymarketname()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keymarketname:Ljava/lang/String;

    return-object v0
.end method

.method public getPicFolder()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->picFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getPicStoragePath()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->picStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPmcRootFolder()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->pmcRootFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getTBLASSIGNMENTVISITDETAILS()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblAssaignmentVisit:Ljava/lang/String;

    return-object v0
.end method

.method public getTBLCROPMAPPING()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblFarmerCropMapping:Ljava/lang/String;

    return-object v0
.end method

.method public getTBLFARMERS()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblFarmerDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getTBLLOG4NET()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblLog4Net:Ljava/lang/String;

    return-object v0
.end method

.method public getTBLMASTERVERSION()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblMasterVersionTrackingSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getTBLSYNCERRORLOG()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblSyncErrorLog:Ljava/lang/String;

    return-object v0
.end method

.method public getTBLVILLAGES()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblVillages:Ljava/lang/String;

    return-object v0
.end method

.method public getTblAssighmentActivityDetails()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblAssighmentActivityDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getTblDealerCompanyMapping()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblDealerCompanyMapping:Ljava/lang/String;

    return-object v0
.end method

.method public getTblDealerCropMapping()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblDealerCropMapping:Ljava/lang/String;

    return-object v0
.end method

.method public getTblDealerMaster()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblDealerMaster:Ljava/lang/String;

    return-object v0
.end method

.method public getTblFarmerMaster()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblFarmerMaster:Ljava/lang/String;

    return-object v0
.end method

.method public getTblsvFarmerCropMapping()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblsvFarmerCropMapping:Ljava/lang/String;

    return-object v0
.end method

.method public getTblsvFarmerDetails()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblsvFarmerDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getTempPath()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tempPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainingDBFolder()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->trainingDBFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainingDatabasePath()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->trainingDatabasePath:Ljava/lang/String;

    return-object v0
.end method

.method public setChildSetSharedPref(Ljava/lang/String;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->childSetSharedPref:Ljava/lang/String;

    return-void
.end method

.method public setDatabasePathLOG(Ljava/lang/String;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->databasePathLOG:Ljava/lang/String;

    return-void
.end method

.method public setKeyIsMba(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyIsMba:Ljava/lang/String;

    return-void
.end method

.method public setKeyfromwhichclass(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keyfromwhichclass:Ljava/lang/String;

    return-void
.end method

.method public setKeymarketname(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->keymarketname:Ljava/lang/String;

    return-void
.end method

.method public setTblDealerCompanyMapping(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblDealerCompanyMapping:Ljava/lang/String;

    return-void
.end method

.method public setTblDealerCropMapping(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblDealerCropMapping:Ljava/lang/String;

    return-void
.end method

.method public setTblDealerMaster(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblDealerMaster:Ljava/lang/String;

    return-void
.end method

.method public setTblFarmerMaster(Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblFarmerMaster:Ljava/lang/String;

    return-void
.end method

.method public setTblsvFarmerCropMapping(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblsvFarmerCropMapping:Ljava/lang/String;

    return-void
.end method

.method public setTblsvFarmerDetails(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/ConstantDeclarations;->tblsvFarmerDetails:Ljava/lang/String;

    return-void
.end method
