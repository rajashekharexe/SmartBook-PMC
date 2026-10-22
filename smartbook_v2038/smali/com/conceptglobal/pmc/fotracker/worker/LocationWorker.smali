.class public Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;
.super Landroidx/work/Worker;
.source "LocationWorker.java"


# static fields
.field public static mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;


# instance fields
.field private context:Landroid/content/Context;

.field private mBound:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    const/4 p2, 0x0

    .line 38
    iput-boolean p2, p0, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->mBound:Z

    .line 42
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->mBound:Z

    return p1
.end method

.method private initServiceConnection()V
    .locals 1

    .line 127
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker$1;-><init>(Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private isServiceRunning(Ljava/lang/String;)Z
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x32

    .line 108
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 110
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 114
    iget-object v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    iget-boolean v1, v2, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private saveErrorLog(Ljava/lang/String;)V
    .locals 4

    .line 87
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    .line 89
    :try_start_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 92
    const-string v3, "ErrorMessage"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string p1, "CreatedDate"

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
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

    .line 95
    const-string p1, "ServerStatus"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    const-string p1, "ErrorLogger"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 99
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 101
    :goto_2
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 102
    throw p1
.end method

.method private startServiceAgain()V
    .locals 4

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->context:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->context:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->context:Landroid/content/Context;

    const-string v1, "MyPref"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->context:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Periodic task started Location staus--"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    invoke-virtual {v4, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->saveErrorLog(Ljava/lang/String;)V

    .line 52
    const-string v1, ""

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Start day"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const-string v0, "Service Need to start"

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->saveErrorLog(Ljava/lang/String;)V

    .line 56
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getLastLatLogTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->getTimeDifferanceInMinutes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 62
    const-class v0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->isServiceRunning(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const-string v0, "isServiceRunning false"

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->saveErrorLog(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->startServiceAgain()V

    goto :goto_1

    .line 68
    :cond_0
    const-string v0, "isServiceRunning true "

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->saveErrorLog(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->context:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 70
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->startServiceAgain()V

    .line 74
    :cond_1
    :goto_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method
