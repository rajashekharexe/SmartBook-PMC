.class public Lcom/conceptglobal/pmc/utils/LocationService;
.super Landroid/app/Service;
.source "LocationService.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final MIN_DISTANCE_CHANGE_FOR_UPDATES:J = 0xaL

.field private static final MIN_TIME_BW_UPDATES:J = 0x0L

.field private static TAG:Ljava/lang/String; = "com.conceptglobal.pmc.utils.LocationService"


# instance fields
.field geocoderMaxResults:I

.field isGPSEnabled:Z

.field isGPSTrackingEnabled:Z

.field isNetworkEnabled:Z

.field latitude:D

.field private locationInfo:Lcom/conceptglobal/pmc/model/LocationInfoModel;

.field protected locationManager:Landroid/location/LocationManager;

.field longitude:D

.field private final mContext:Landroid/content/Context;

.field private mOnLocationFoundListener:Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;

.field private providerInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/utils/LocationService;->isGPSEnabled:Z

    .line 38
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/utils/LocationService;->isNetworkEnabled:Z

    .line 40
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/utils/LocationService;->isGPSTrackingEnabled:Z

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/conceptglobal/pmc/utils/LocationService;->geocoderMaxResults:I

    .line 56
    new-instance v0, Lcom/conceptglobal/pmc/model/LocationInfoModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/LocationInfoModel;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/LocationService;->locationInfo:Lcom/conceptglobal/pmc/model/LocationInfoModel;

    .line 61
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/LocationService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAddressLine(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 213
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/LocationService;->getGeocoderAddress(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 215
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 216
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    .line 217
    invoke-virtual {p1, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCountryName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 267
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/LocationService;->getGeocoderAddress(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 268
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 269
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    .line 270
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

    .line 185
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/LocationService;->locationInfo:Lcom/conceptglobal/pmc/model/LocationInfoModel;

    if-eqz v0, :cond_0

    .line 187
    new-instance v1, Landroid/location/Geocoder;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, p1, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 195
    :try_start_0
    iget-wide v2, p0, Lcom/conceptglobal/pmc/utils/LocationService;->latitude:D

    iget-wide v4, p0, Lcom/conceptglobal/pmc/utils/LocationService;->longitude:D

    iget v6, p0, Lcom/conceptglobal/pmc/utils/LocationService;->geocoderMaxResults:I

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 200
    sget-object v0, Lcom/conceptglobal/pmc/utils/LocationService;->TAG:Ljava/lang/String;

    const-string v1, "Impossible to connect to Geocoder"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIsGPSTrackingEnabled()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/utils/LocationService;->isGPSTrackingEnabled:Z

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/LocationService;->locationInfo:Lcom/conceptglobal/pmc/model/LocationInfoModel;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/LocationInfoModel;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/utils/LocationService;->latitude:D

    .line 116
    :cond_0
    iget-wide v0, p0, Lcom/conceptglobal/pmc/utils/LocationService;->latitude:D

    return-wide v0
.end method

.method public getLocality(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 231
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/LocationService;->getGeocoderAddress(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 233
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 234
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    .line 235
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLongitude()D
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/LocationService;->locationInfo:Lcom/conceptglobal/pmc/model/LocationInfoModel;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/LocationInfoModel;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/utils/LocationService;->longitude:D

    .line 127
    :cond_0
    iget-wide v0, p0, Lcom/conceptglobal/pmc/utils/LocationService;->longitude:D

    return-wide v0
.end method

.method public getPostalCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 249
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/LocationService;->getGeocoderAddress(Landroid/content/Context;)Ljava/util/List;

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
    .locals 3

    if-eqz p1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/LocationService;->locationInfo:Lcom/conceptglobal/pmc/model/LocationInfoModel;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/model/LocationInfoModel;->setLatitude(D)V

    .line 282
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/LocationService;->locationInfo:Lcom/conceptglobal/pmc/model/LocationInfoModel;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/model/LocationInfoModel;->setLongitude(D)V

    .line 284
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/LocationService;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/LocationService;->mOnLocationFoundListener:Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
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

.method public showSettingsAlert(Landroid/content/Context;)V
    .locals 3

    .line 151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08010a

    .line 153
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f10002e

    .line 154
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 155
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_gpsOffPlsEnableGPSDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 157
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_settings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/utils/LocationService$1;

    invoke-direct {v2, p0, p1}, Lcom/conceptglobal/pmc/utils/LocationService$1;-><init>(Lcom/conceptglobal/pmc/utils/LocationService;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/utils/LocationService$2;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/utils/LocationService$2;-><init>(Lcom/conceptglobal/pmc/utils/LocationService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 174
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method public startListeningOnGpsOrNetworkProvider()V
    .locals 5

    .line 68
    const-string v0, "network"

    const-string v1, "gps"

    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/LocationService;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/conceptglobal/pmc/utils/LocationService;->locationManager:Landroid/location/LocationManager;

    .line 70
    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/conceptglobal/pmc/utils/LocationService;->isGPSEnabled:Z

    .line 72
    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/LocationService;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/conceptglobal/pmc/utils/LocationService;->isNetworkEnabled:Z

    .line 74
    iget-boolean v3, p0, Lcom/conceptglobal/pmc/utils/LocationService;->isGPSEnabled:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 75
    iput-boolean v4, p0, Lcom/conceptglobal/pmc/utils/LocationService;->isGPSTrackingEnabled:Z

    .line 76
    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/LocationService;->providerInfo:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 78
    iput-boolean v4, p0, Lcom/conceptglobal/pmc/utils/LocationService;->isGPSTrackingEnabled:Z

    .line 79
    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/LocationService;->providerInfo:Ljava/lang/String;

    .line 83
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/LocationService;->providerInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 93
    sget-object v1, Lcom/conceptglobal/pmc/utils/LocationService;->TAG:Ljava/lang/String;

    const-string v2, "unable to connect to LocationManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public stopListeningOnGpsOrNetworkProvider()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/LocationService;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method
