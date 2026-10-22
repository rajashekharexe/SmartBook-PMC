.class public Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;
.super Ljava/lang/Object;
.source "LocationTracker.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private context:Landroid/content/Context;

.field private final isTrackingByLocation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final locationManager:Landroid/location/LocationManager;

.field private previousLocation:Landroid/location/Location;

.field private targetLocation:Landroid/location/Location;

.field private toleranceInMeters:D

.field private vibrate:Z


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;Landroid/media/AudioManager;Landroid/content/Context;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->isTrackingByLocation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->vibrate:Z

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->previousLocation:Landroid/location/Location;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 75
    iput-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->locationManager:Landroid/location/LocationManager;

    .line 78
    iput-object p2, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->audioManager:Landroid/media/AudioManager;

    .line 79
    iput-object p3, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->context:Landroid/content/Context;

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "the AudioManager is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "the LocationManager is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkLocation(Landroid/location/Location;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->previousLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "previous location"

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->isInRange(Landroid/location/Location;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 136
    :goto_0
    const-string v1, "current location"

    invoke-direct {p0, p1, v1}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->isInRange(Landroid/location/Location;Ljava/lang/String;)Z

    move-result p1

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 152
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_3
    :goto_1
    return-void
.end method

.method private isInRange(Landroid/location/Location;Ljava/lang/String;)Z
    .locals 4

    .line 176
    iget-object p2, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->targetLocation:Landroid/location/Location;

    invoke-virtual {p1, p2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p2

    float-to-double v0, p2

    .line 178
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p2, v0

    .line 179
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    float-to-double v0, p2

    .line 186
    iget-wide v2, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->toleranceInMeters:D

    float-to-double p1, p1

    add-double/2addr v2, p1

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isVibrationAllowed()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 5

    .line 252
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd hh:mm:ss a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->targetLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->targetLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTolerance()Ljava/lang/Double;
    .locals 2

    .line 277
    iget-wide v0, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->toleranceInMeters:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 206
    const-string v0, "location updated "

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->saveErrorLog(Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 213
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->checkLocation(Landroid/location/Location;)V

    .line 214
    new-instance v0, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;-><init>()V

    .line 215
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->setDate(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->setWorked(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->setTarget(Ljava/lang/String;)V

    .line 218
    new-instance v2, Lcom/conceptglobal/pmc/smartalerts/locationservice/SendLocation;

    invoke-direct {v2, p1}, Lcom/conceptglobal/pmc/smartalerts/locationservice/SendLocation;-><init>(Landroid/location/Location;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/conceptglobal/pmc/smartalerts/locationservice/SendLocation;->getAddress(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->setAddress(Ljava/lang/String;)V

    .line 221
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertCoordinates(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 222
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    iget-object v1, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    :goto_0
    iput-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->previousLocation:Landroid/location/Location;

    goto :goto_1

    .line 231
    :cond_0
    const-string p1, "last known location is null"

    invoke-static {p1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->saveErrorLog(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public shouldVibrate()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->vibrate:Z

    return v0
.end method

.method public startTrackingByLocation(DDD)Lcom/conceptglobal/pmc/smartalerts/locationservice/Result;
    .locals 6

    .line 90
    const-string v0, "fused"

    const-string v1, "network"

    const-string v2, "preparing location-based tracking"

    invoke-static {v2}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->saveErrorLog(Ljava/lang/String;)V

    .line 92
    new-instance v2, Landroid/location/Location;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->targetLocation:Landroid/location/Location;

    .line 93
    invoke-virtual {v2, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 94
    iget-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->targetLocation:Landroid/location/Location;

    invoke-virtual {p1, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 95
    iput-wide p5, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->toleranceInMeters:D

    .line 99
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->stopTrackingByLocation()V

    .line 101
    iget-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->isTrackingByLocation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 103
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1, p3}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object p1

    .line 104
    const-string p3, "passive"

    .line 105
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1f

    if-lt p1, p4, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, p3

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->locationManager:Landroid/location/LocationManager;

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    move-object v5, p0

    .line 116
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 119
    const-string p1, "started location-based tracking"

    invoke-static {p1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->saveErrorLog(Ljava/lang/String;)V

    .line 120
    sget-object p1, Lcom/conceptglobal/pmc/smartalerts/locationservice/Result;->SUCCESS:Lcom/conceptglobal/pmc/smartalerts/locationservice/Result;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 123
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "NOT started location-based tracking, insufficient privileges detected"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->saveErrorLog(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->isTrackingByLocation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 125
    sget-object p1, Lcom/conceptglobal/pmc/smartalerts/locationservice/Result;->FAILURE_INSUFFICIENT_RIGHTS:Lcom/conceptglobal/pmc/smartalerts/locationservice/Result;

    return-object p1

    .line 129
    :cond_2
    sget-object p1, Lcom/conceptglobal/pmc/smartalerts/locationservice/Result;->FAILURE_ALREADY_RUNNING:Lcom/conceptglobal/pmc/smartalerts/locationservice/Result;

    return-object p1
.end method

.method public stopTrackingByLocation()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 197
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTracker;->isTrackingByLocation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "stopped location-based tracking"

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->saveErrorLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
