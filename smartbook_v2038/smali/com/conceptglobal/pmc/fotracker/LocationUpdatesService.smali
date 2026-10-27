.class public Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;
.super Landroid/app/Service;
.source "LocationUpdatesService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$LocalBinder;
    }
.end annotation


# static fields
.field static final ACTION_BROADCAST:Ljava/lang/String; = "com.conceptglobal.fieldtrack.broadcast"

.field private static final CHANNEL_ID:Ljava/lang/String; = "channel_01"

.field static final EXTRA_LOCATION:Ljava/lang/String; = "com.conceptglobal.fieldtrack.location"

.field private static final EXTRA_STARTED_FROM_NOTIFICATION:Ljava/lang/String; = "com.conceptglobal.fieldtrack.started_from_notification"

.field private static final FASTEST_UPDATE_INTERVAL_IN_MILLISECONDS:J = 0x249f0L

.field private static final NOTIFICATION_ID:I = 0xbc614e

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.conceptglobal.fieldtrack"

.field public static final REQUEST_CHECK_SETTINGS:I = 0x1

.field static final REQUEST_LOCATION:I = 0xc7

.field private static final TAG:Ljava/lang/String; = "LocationUpdatesService"

.field private static final UPDATE_INTERVAL_IN_MILLISECONDS:J = 0x249f0L


# instance fields
.field handler:Landroid/os/Handler;

.field private mActivity:Landroid/app/Activity;

.field private final mBinder:Landroid/os/IBinder;

.field private mChangingConfiguration:Z

.field private mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mLocation:Landroid/location/Location;

.field private mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

.field private mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private mLocationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

.field mLocationUpdatesService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field mOnTimerCallback:Lcom/conceptglobal/pmc/fotracker/util/IOnTimerCallback;

.field private mServiceHandler:Landroid/os/Handler;

.field private mSettingsClient:Lcom/google/android/gms/location/SettingsClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 113
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$LocalBinder;-><init>(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mChangingConfiguration:Z

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;Landroid/location/Location;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->onNewLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->saveErrorLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->notifyUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 92
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)Landroid/app/Activity;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)Lcom/google/android/gms/location/LocationRequest;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)Lcom/google/android/gms/location/LocationCallback;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)Lcom/google/android/gms/location/FusedLocationProviderClient;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)Landroid/location/Location;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$802(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method private buildLocationSettingsRequest()V
    .locals 2

    .line 574
    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 575
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    .line 576
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

    return-void
.end method

.method private createLocationRequest()V
    .locals 3

    .line 536
    const-string v0, "LocationUpdatesService  -- createLocationRequest "

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->saveErrorLog(Ljava/lang/String;)V

    .line 537
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/32 v1, 0x249f0

    .line 538
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 539
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 540
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method private getLastLocation()V
    .locals 4

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$4;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$4;-><init>(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)V

    .line 492
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 503
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lost location permission."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getNotification()Landroid/app/Notification;
    .locals 8

    .line 446
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocation:Landroid/location/Location;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fotracker/Utils;->getLocationText(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    .line 451
    const-string v2, "com.conceptglobal.fieldtrack.started_from_notification"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 456
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v4, 0x4000000

    const/4 v5, 0x0

    const/16 v6, 0x17

    if-lt v2, v6, :cond_0

    const/high16 v2, 0x4000000

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/high16 v7, 0x8000000

    add-int/2addr v2, v7

    .line 454
    invoke-static {p0, v5, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 461
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 463
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/high16 v2, 0x10000000

    add-int/2addr v4, v2

    .line 461
    invoke-static {p0, v5, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 467
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 468
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 473
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 474
    invoke-static {p0}, Lcom/conceptglobal/pmc/fotracker/Utils;->getLocationTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 475
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 476
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v2, 0x7f080067

    .line 477
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 478
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 482
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 483
    const-string v1, "channel_01"

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 486
    :cond_2
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private notifyUser(Ljava/lang/String;)V
    .locals 2

    .line 586
    new-instance v0, Landroid/content/Intent;

    const-string v1, "GPS_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private onNewLocation(Landroid/location/Location;)V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_sleep_guard

    const/4 v1, 0x6

    if-ge v0, v1, :cond_normal_loc

    :cond_sleep_guard
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->removeLocationUpdates()V

    return-void

    :cond_normal_loc
    .line 508
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New location::::: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v0, "LocationUpdatesService  -- onNewLocation "

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->saveErrorLog(Ljava/lang/String;)V

    .line 511
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocation:Landroid/location/Location;

    .line 514
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.conceptglobal.fieldtrack.broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    const-string v1, "com.conceptglobal.fieldtrack.location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 516
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 519
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MyPref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 520
    const-string v1, "locationStartTime"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/conceptglobal/pmc/fotracker/database/InsertDataIntoDB;->insertCoordinates(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 523
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 527
    :goto_0
    invoke-virtual {p0, p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->serviceIsRunningInForeground(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mActivity:Landroid/app/Activity;

    if-nez p1, :cond_1

    .line 528
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mNotificationManager:Landroid/app/NotificationManager;

    const v0, 0xbc614e    # 1.729998E-38f

    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method private saveErrorLog(Ljava/lang/String;)V
    .locals 4

    .line 689
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    .line 691
    :try_start_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 693
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 694
    const-string v3, "ErrorMessage"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string p1, "CreatedDate"

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
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

    .line 697
    const-string p1, "ServerStatus"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    const-string p1, "ErrorLogger"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 701
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 703
    :goto_2
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 704
    throw p1
.end method

.method private startDataInsertedService(Landroid/content/Context;)V
    .locals 2

    .line 682
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x1

    .line 683
    sput-boolean p1, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->IS_SERVICE_RUNNING:Z

    .line 684
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private startTimer()V
    .locals 4

    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$5;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$5;-><init>(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 623
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 298
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->TAG:Ljava/lang/String;

    const-string v0, "in onBind() :::::::::::"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 299
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->stopForeground(Z)V

    const/4 p1, 0x0

    .line 300
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mChangingConfiguration:Z

    .line 301
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 289
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x1

    .line 290
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mChangingConfiguration:Z

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 206
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate ::::::::::::: service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v1, "LocationUpdatesService started -- in onCreate() "

    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->saveErrorLog(Ljava/lang/String;)V

    .line 208
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 209
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getSettingsClient(Landroid/content/Context;)Lcom/google/android/gms/location/SettingsClient;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mSettingsClient:Lcom/google/android/gms/location/SettingsClient;

    .line 211
    new-instance v1, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$1;-><init>(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 232
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->createLocationRequest()V

    .line 233
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->buildLocationSettingsRequest()V

    .line 234
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->getLastLocation()V

    .line 235
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->handler:Landroid/os/Handler;

    .line 236
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 238
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mServiceHandler:Landroid/os/Handler;

    .line 239
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const v0, 0x7f10002e

    .line 243
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    const-string v1, "channel_01"

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 252
    :cond_0
    const-string v0, "MyPref"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 253
    const-string v1, "location"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Start day"

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->requestLocationUpdates2()V

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_2

    const v0, 0xbc614e    # 1.729998E-38f

    .line 259
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->startForeground(ILandroid/app/Notification;)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 342
    const-string v0, "test"

    const-string v1, "onDestroy :::::::::::::::::"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
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

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->saveErrorLog(Ljava/lang/String;)V

    .line 344
    sget-boolean v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->isTracking:Z

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const v0, 0xbc614e    # 1.729998E-38f

    .line 347
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->startForeground(ILandroid/app/Notification;)V

    :goto_0
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    .line 309
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->TAG:Ljava/lang/String;

    const-string v1, "in onRebind() ::::::::::::"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 310
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->stopForeground(Z)V

    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mChangingConfiguration:Z

    .line 312
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 266
    sget-object p2, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->TAG:Ljava/lang/String;

    const-string p3, "Service started ::::::::::::::"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string p2, "LocationUpdatesService  -- onNewLocation "

    invoke-direct {p0, p2}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->saveErrorLog(Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 270
    const-string p3, "LocationUpdatesService  -- onNewLocation not null"

    invoke-direct {p0, p3}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->saveErrorLog(Ljava/lang/String;)V

    .line 271
    const-string p3, "com.conceptglobal.fieldtrack.started_from_notification"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0

    .line 274
    :cond_0
    const-string p1, "LocationUpdatesService  -- onNewLocation  null"

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->saveErrorLog(Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->removeLocationUpdates()V

    .line 281
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->stopSelf()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    .line 674
    const-string v0, "test"

    const-string v1, "onTaskRemoved :::::::::::::::::"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.location.servicebroadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->removeLocationUpdates()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->stopForeground(Z)V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->stopSelf()V

    .line 677
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 317
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->TAG:Ljava/lang/String;

    const-string v0, "Last client unbound from service:::::::::::"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mChangingConfiguration:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/conceptglobal/pmc/fotracker/Utils;->requestingLocationUpdates(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const-string v0, "Starting foreground service"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0xbc614e    # 1.729998E-38f

    .line 334
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public removeLocationUpdates()V
    .locals 4

    .line 430
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->TAG:Ljava/lang/String;

    const-string v1, "Removing location updates"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v0, "LocationUpdatesService  -- removeLocationUpdates  "

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->saveErrorLog(Ljava/lang/String;)V

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    const/4 v0, 0x0

    .line 434
    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/fotracker/Utils;->setRequestingLocationUpdates(Landroid/content/Context;Z)V

    .line 435
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 437
    invoke-static {p0, v1}, Lcom/conceptglobal/pmc/fotracker/Utils;->setRequestingLocationUpdates(Landroid/content/Context;Z)V

    .line 438
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lost location permission. Could not remove updates. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestLocationUpdates()V
    .locals 4

    .line 358
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->TAG:Ljava/lang/String;

    const-string v1, "Requesting location updates"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v0, "LocationUpdatesService  -- requestLocationUpdates  "

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->saveErrorLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 360
    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/fotracker/Utils;->setRequestingLocationUpdates(Landroid/content/Context;Z)V

    .line 361
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 365
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    .line 364
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mSettingsClient:Lcom/google/android/gms/location/SettingsClient;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/SettingsClient;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$3;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$3;-><init>(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)V

    .line 368
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$2;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$2;-><init>(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)V

    .line 377
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 405
    invoke-static {p0, v1}, Lcom/conceptglobal/pmc/fotracker/Utils;->setRequestingLocationUpdates(Landroid/content/Context;Z)V

    .line 406
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lost location permission. Could not request updates. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestLocationUpdates2()V
    .locals 4

    .line 411
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->TAG:Ljava/lang/String;

    const-string v1, "Requesting location updates2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v0, "LocationUpdatesService  -- requestLocationUpdates2  "

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->saveErrorLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 413
    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/fotracker/Utils;->setRequestingLocationUpdates(Landroid/content/Context;Z)V

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 417
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    .line 416
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 420
    invoke-static {p0, v1}, Lcom/conceptglobal/pmc/fotracker/Utils;->setRequestingLocationUpdates(Landroid/content/Context;Z)V

    .line 421
    sget-object v1, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lost location permission. Could not request updates. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public serviceIsRunningInForeground(Landroid/content/Context;)Z
    .locals 3

    .line 560
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 562
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 564
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setActivityReference(Landroid/app/Activity;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setTimerCallback(Lcom/conceptglobal/pmc/fotracker/util/IOnTimerCallback;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mOnTimerCallback:Lcom/conceptglobal/pmc/fotracker/util/IOnTimerCallback;

    return-void
.end method
