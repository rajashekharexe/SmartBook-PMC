.class public Lcom/conceptglobal/pmc/fotracker/DataInsertedService;
.super Landroid/app/Service;
.source "DataInsertedService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;
    }
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "111"

.field public static IS_SERVICE_RUNNING:Z = false

.field public static final firstDelay:I = 0x4e20

.field public static mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService; = null

.field public static final notify:I = 0x2bf20


# instance fields
.field binder:Landroid/os/Binder;

.field private errorCount:I

.field private mBound:Z

.field private mDataCount:I

.field private mHandler:Landroid/os/Handler;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mTimeDisplay:Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->mTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->mDataCount:I

    .line 50
    iput v0, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->errorCount:I

    .line 52
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->binder:Landroid/os/Binder;

    .line 57
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->mBound:Z

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;)I
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->getTrackerRecords()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->mDataCount:I

    return p0
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->mDataCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->saveErrorLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$402(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->mBound:Z

    return p1
.end method

.method private getTrackerRecords()I
    .locals 3

    .line 174
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->getDateToday()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v1

    .line 177
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v2

    .line 178
    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getFoTrackerCountQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getFoTrackerCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private initServiceConnection()V
    .locals 1

    .line 296
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$1;-><init>(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private isServiceRunning(Ljava/lang/String;)Z
    .locals 4

    .line 276
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x32

    .line 277
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 278
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 279
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 283
    iget-object v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    iget-boolean v1, v2, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private saveErrorLog(Ljava/lang/String;)V
    .locals 4

    .line 183
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    .line 185
    :try_start_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 188
    const-string v3, "ErrorMessage"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string p1, "CreatedDate"

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
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

    .line 191
    const-string p1, "ServerStatus"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string p1, "ErrorLogger"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 195
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 197
    :goto_2
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 198
    throw p1
.end method

.method private sendFailureBroadcasts()V
    .locals 2

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "GPS_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->sendBroadcast(Landroid/content/Intent;)V

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->sendBroadcast(Landroid/content/Intent;)V

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private startForegroundService()V
    .locals 6

    .line 92
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 93
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "111"

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    const v1, 0x7f10002e

    .line 94
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    .line 96
    invoke-static {v2, v1, v4}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 102
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/fotracker/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/4 v5, 0x0

    if-lt v1, v4, :cond_1

    const/high16 v1, 0x4000000

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/high16 v4, 0x10000000

    add-int/2addr v1, v4

    .line 105
    invoke-static {p0, v5, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 111
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "My Notification"

    .line 112
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v4, "Notification text 123456"

    .line 113
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v4, 0x7f080067

    .line 114
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 115
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 118
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_2

    .line 119
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_2
    const/16 v1, 0x65

    .line 122
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->binder:Landroid/os/Binder;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 203
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDestroy  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->saveErrorLog(Ljava/lang/String;)V

    .line 205
    const-string v0, "test"

    const-string v1, "OnDestroy :::::::::DataInserted::::::::"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->serviceIsRunningInForeground(Landroid/content/Context;)Z

    :cond_0
    const/4 v0, 0x0

    .line 211
    sput-boolean v0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->IS_SERVICE_RUNNING:Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .line 72
    sget-boolean p1, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->IS_SERVICE_RUNNING:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->startForegroundService()V

    .line 74
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->initServiceConnection()V

    .line 75
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->mTimer:Ljava/util/Timer;

    if-nez p1, :cond_2

    .line 76
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->mTimer:Ljava/util/Timer;

    .line 77
    new-instance v1, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;-><init>(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->mTimeDisplay:Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;

    .line 78
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x4e20

    const-wide/32 v4, 0x2bf20

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->mTimer:Ljava/util/Timer;

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 84
    :cond_1
    invoke-virtual {p0, p2}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->stopForeground(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->stopSelf()V

    :cond_2
    :goto_0
    return p2
.end method
