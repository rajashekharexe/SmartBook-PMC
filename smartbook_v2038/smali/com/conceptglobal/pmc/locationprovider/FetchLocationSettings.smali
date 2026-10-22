.class public Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;
.super Ljava/lang/Object;
.source "FetchLocationSettings.java"


# static fields
.field private static final FASTEST_UPDATE_INTERVAL_IN_MILLISECONDS:J = 0x1388L

.field public static final REQUEST_CHECK_SETTINGS:I = 0x1

.field public static final REQUEST_PERMISSIONS_REQUEST_CODE:I = 0x22

.field private static final TAG:Ljava/lang/String; = "FetchLocationSettings"

.field private static final UPDATE_INTERVAL_IN_MILLISECONDS:J = 0x2710L


# instance fields
.field private activity:Landroid/app/Activity;

.field private callback:Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;

.field private dialog:Landroid/app/Dialog;

.field private fromTag:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field private mCurrentLocation:Landroid/location/Location;

.field private mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private mLastUpdateTime:Ljava/lang/String;

.field private mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

.field private mLocationInfo:Lcom/conceptglobal/pmc/model/LocationInfo;

.field private mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private mLocationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

.field private mProgressBarLayout:Landroid/widget/RelativeLayout;

.field private mRequestingLocationUpdates:Ljava/lang/Boolean;

.field private mSettingsClient:Lcom/google/android/gms/location/SettingsClient;

.field private showLoader:Z

.field private telManager:Landroid/telephony/TelephonyManager;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    .locals 4

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->showLoader:Z

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->fromTag:Ljava/lang/String;

    .line 136
    const-string v1, "start-new"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Location"

    invoke-static {v3, v1, p4, v2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iput-object p3, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->callback:Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;

    .line 138
    iput-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->activity:Landroid/app/Activity;

    .line 139
    iput-boolean p2, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->showLoader:Z

    .line 140
    iput-object p4, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->fromTag:Ljava/lang/String;

    const/4 p2, 0x1

    .line 141
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    .line 142
    iput-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->mLastUpdateTime:Ljava/lang/String;

    .line 143
    new-instance p2, Lcom/conceptglobal/pmc/model/LocationInfo;

    invoke-direct {p2}, Lcom/conceptglobal/pmc/model/LocationInfo;-><init>()V

    iput-object p2, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->mLocationInfo:Lcom/conceptglobal/pmc/model/LocationInfo;

    .line 144
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->handler:Landroid/os/Handler;

    .line 146
    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/app/Activity;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 147
    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getSettingsClient(Landroid/app/Activity;)Lcom/google/android/gms/location/SettingsClient;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->mSettingsClient:Lcom/google/android/gms/location/SettingsClient;

    .line 151
    invoke-direct {p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->createLocationRequest()V

    .line 152
    invoke-direct {p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->buildLocationSettingsRequest()V

    .line 153
    invoke-direct {p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->startLocationUpdates()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;)Landroid/app/Activity;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$202(Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    return-object p1
.end method

.method private buildLocationSettingsRequest()V
    .locals 2

    .line 197
    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 198
    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    .line 199
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->mLocationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

    return-void
.end method

.method private createLocationRequest()V
    .locals 3

    .line 174
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x2710

    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 184
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 186
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method private startLocationUpdates()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->mSettingsClient:Lcom/google/android/gms/location/SettingsClient;

    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->mLocationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/SettingsClient;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings$2;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings$2;-><init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;)V

    .line 233
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings$1;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings$1;-><init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;)V

    .line 238
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 212
    :cond_1
    sget-object p1, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->TAG:Ljava/lang/String;

    const-string p2, "User chose not to make required location settings changes."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 213
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    goto :goto_0

    .line 208
    :cond_2
    sget-object p1, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->TAG:Ljava/lang/String;

    const-string p2, "User agreed to make required location settings changes."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
