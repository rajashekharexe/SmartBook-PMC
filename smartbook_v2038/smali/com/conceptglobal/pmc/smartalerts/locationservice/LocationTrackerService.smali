.class public Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;
.super Landroid/app/Service;
.source "LocationTrackerService.java"


# static fields
.field private static final isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static locationTracker:Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;


# instance fields
.field private basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

.field private startId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 50
    const-string v0, "creating LocationTrackerService"

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->saveErrorLog(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/smartalerts/Basics;->get(Landroid/content/Context;)Lcom/conceptglobal/pmc/smartalerts/Basics;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/smartalerts/Basics;->createNotificationTracking()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->startForeground(ILandroid/app/Notification;)V

    .line 55
    :cond_0
    new-instance v0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;

    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 56
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;-><init>(Landroid/location/LocationManager;Landroid/media/AudioManager;Landroid/content/Context;)V

    sput-object v0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->locationTracker:Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;

    .line 58
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/smartalerts/Basics;->safeCheckLocationBasedTracking()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 125
    const-string v0, "destroying LocationTrackerService"

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->saveErrorLog(Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->locationTracker:Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->stopTrackingByLocation()V

    .line 127
    sget-object v0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->stopSelf()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-wide/16 v4, 0x0

    .line 80
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide/16 v6, 0x0

    .line 81
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide/16 v8, 0x0

    .line 82
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 85
    sget-object v11, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v11

    const-string v13, "service is started.."

    if-eqz v11, :cond_1

    move/from16 v11, p3

    .line 86
    iput v11, v0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->startId:I

    .line 87
    sget-object v11, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->locationTracker:Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v11

    invoke-virtual/range {v3 .. v9}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->startTrackingByLocation(DDD)Lcom/conceptglobal/pmc/smartalerts/locationservice/Result;

    move-result-object v2

    .line 88
    invoke-static {v0, v13, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 89
    :cond_1
    sget-object v11, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->locationTracker:Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->getLatitude()Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    sget-object v11, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->locationTracker:Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->getLongitude()Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    sget-object v11, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->locationTracker:Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;

    .line 90
    invoke-virtual {v11}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->getTolerance()Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_0

    .line 96
    :cond_2
    const-string v2, "LocationTrackerService is already running and nothing has to be updated - no action"

    invoke-static {v2}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->saveErrorLog(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_1

    .line 92
    :cond_3
    :goto_0
    sget-object v11, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->locationTracker:Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v11

    invoke-virtual/range {v3 .. v9}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->startTrackingByLocation(DDD)Lcom/conceptglobal/pmc/smartalerts/locationservice/Result;

    move-result-object v2

    .line 93
    invoke-static {v0, v13, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 99
    :goto_1
    sget-object v3, Lcom/conceptglobal/pmc/smartalerts/locationservice/Result;->FAILURE_INSUFFICIENT_RIGHTS:Lcom/conceptglobal/pmc/smartalerts/locationservice/Result;

    const/4 v4, 0x4

    if-ne v2, v3, :cond_4

    .line 102
    iget-object v5, v0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    const v2, 0x7f1002df

    .line 104
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v2, 0x7f1002e0

    .line 105
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v2, 0x7f1002de

    .line 106
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v2, v0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    const v3, 0x7f1002dd

    .line 109
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 108
    invoke-virtual {v2, v3, v9}, Lcom/conceptglobal/pmc/smartalerts/Basics;->createMessagePendingIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 111
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 103
    invoke-virtual/range {v5 .. v17}, Lcom/conceptglobal/pmc/smartalerts/Basics;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/Integer;ZLandroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_2

    .line 112
    :cond_4
    sget-object v3, Lcom/conceptglobal/pmc/smartalerts/locationservice/Result;->SUCCESS:Lcom/conceptglobal/pmc/smartalerts/locationservice/Result;

    if-ne v2, v3, :cond_6

    .line 113
    iget-object v2, v0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/smartalerts/Basics;->isNotificationActive(I)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 114
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 115
    :cond_5
    iget-object v2, v0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/smartalerts/Basics;->removeNotification(I)V

    :cond_6
    :goto_2
    return v1
.end method
