.class public Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;
.super Landroid/app/Service;
.source "GPSTracker.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final MIN_DISTANCE_CHANGE_FOR_UPDATES:J = 0xaL

.field private static final MIN_TIME_BW_UPDATES:J = 0xea60L

.field private static TAG:Ljava/lang/String; = "com.conceptglobal.pmc.fotracker.util.GPSTracker"


# instance fields
.field canGetLocation:Z

.field geocoderMaxResults:I

.field isGPSEnabled:Z

.field isGPSTrackingEnabled:Z

.field isNetworkEnabled:Z

.field latitude:D

.field location:Landroid/location/Location;

.field protected locationManager:Landroid/location/LocationManager;

.field longitude:D

.field private final mContext:Landroid/content/Context;

.field private provider_info:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->isGPSEnabled:Z

    .line 35
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->isNetworkEnabled:Z

    .line 36
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->canGetLocation:Z

    .line 38
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->isGPSTrackingEnabled:Z

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->geocoderMaxResults:I

    .line 54
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->getLocation()Landroid/location/Location;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getAddressLine(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 234
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->getGeocoderAddress(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 235
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 236
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    .line 237
    invoke-virtual {p1, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCountryName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 280
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->getGeocoderAddress(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 281
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 282
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    .line 283
    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGeocoderAddress(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 212
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 218
    :try_start_0
    iget-wide v2, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->latitude:D

    iget-wide v4, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->longitude:D

    iget v6, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->geocoderMaxResults:I

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 223
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->TAG:Ljava/lang/String;

    const-string v1, "Impossible to connect to Geocoder"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIsGPSTrackingEnabled()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->isGPSTrackingEnabled:Z

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->latitude:D

    .line 145
    :cond_0
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->latitude:D

    return-wide v0
.end method

.method public getLocality(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 250
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->getGeocoderAddress(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 251
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 252
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    .line 253
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocation()Landroid/location/Location;
    .locals 14

    .line 60
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "GPS Enabled"

    const-string v2, "Network"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const-string v4, "network"

    const-string v5, "gps"

    :try_start_0
    iget-object v6, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->mContext:Landroid/content/Context;

    const-string v7, "location"

    .line 61
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/LocationManager;

    iput-object v6, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    .line 65
    invoke-virtual {v6, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->isGPSEnabled:Z

    .line 67
    iget-object v6, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    .line 68
    invoke-virtual {v6, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->isNetworkEnabled:Z

    .line 69
    iget-boolean v7, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->isGPSEnabled:Z

    if-nez v7, :cond_0

    if-nez v6, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v7, 0x1

    .line 72
    iput-boolean v7, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->canGetLocation:Z

    if-eqz v6, :cond_2

    .line 74
    iput-boolean v7, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->isGPSTrackingEnabled:Z

    .line 75
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v6, v8, :cond_1

    .line 76
    iget-object v6, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-static {v6, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 82
    const-string v6, "test"

    const-string v8, "Permission not granted ::::::::::"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v6, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x64

    invoke-static {v6, v0, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 89
    :cond_1
    iget-object v8, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v9, "network"

    const-wide/32 v10, 0xea60

    const/high16 v12, 0x41200000    # 10.0f

    move-object v13, p0

    invoke-virtual/range {v8 .. v13}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 93
    invoke-static {v2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->latitude:D

    .line 98
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->longitude:D

    .line 103
    :cond_2
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->isGPSEnabled:Z

    if-eqz v0, :cond_3

    .line 104
    iput-boolean v7, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->isGPSTrackingEnabled:Z

    .line 105
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->location:Landroid/location/Location;

    if-nez v0, :cond_3

    .line 106
    iget-object v6, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v7, "gps"

    const-wide/32 v8, 0xea60

    const/high16 v10, 0x41200000    # 10.0f

    move-object v11, p0

    invoke-virtual/range {v6 .. v11}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 110
    invoke-static {v1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->latitude:D

    .line 115
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->longitude:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->longitude:D

    .line 156
    :cond_0
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->longitude:D

    return-wide v0
.end method

.method public getPostalCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 265
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->getGeocoderAddress(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 266
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 267
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    .line 268
    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

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

.method public showSettingsAlert()V
    .locals 3

    .line 181
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    const-string v1, "Settings"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 185
    const-string v2, "Please enable permissions"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 187
    new-instance v2, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker$1;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker$1;-><init>(Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    new-instance v1, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker$2;-><init>(Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;)V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 203
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public stopUsingGPS()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method public updateGPSCoordinates()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->latitude:D

    .line 133
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/fotracker/util/GPSTracker;->longitude:D

    :cond_0
    return-void
.end method
