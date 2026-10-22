.class public Lcom/conceptglobal/pmc/locationprovider/FetchLocation;
.super Ljava/lang/Object;
.source "FetchLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;
    }
.end annotation


# static fields
.field private static final FASTEST_UPDATE_INTERVAL_IN_MILLISECONDS:J = 0x1388L

.field public static final REQUEST_CHECK_SETTINGS:I = 0x1

.field public static final REQUEST_PERMISSIONS_REQUEST_CODE:I = 0x22

.field private static final TAG:Ljava/lang/String; = "FetchLocation"

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

.field private myListener:Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;

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

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->showLoader:Z

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->fromTag:Ljava/lang/String;

    .line 141
    const-string v1, "start-new"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Location"

    invoke-static {v3, v1, p4, v2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iput-object p3, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->callback:Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;

    .line 143
    iput-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->activity:Landroid/app/Activity;

    .line 144
    iput-boolean p2, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->showLoader:Z

    .line 145
    iput-object p4, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->fromTag:Ljava/lang/String;

    const/4 p2, 0x1

    .line 146
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    .line 147
    iput-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLastUpdateTime:Ljava/lang/String;

    .line 148
    new-instance p2, Lcom/conceptglobal/pmc/model/LocationInfo;

    invoke-direct {p2}, Lcom/conceptglobal/pmc/model/LocationInfo;-><init>()V

    iput-object p2, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLocationInfo:Lcom/conceptglobal/pmc/model/LocationInfo;

    .line 149
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->handler:Landroid/os/Handler;

    .line 151
    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/app/Activity;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 152
    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getSettingsClient(Landroid/app/Activity;)Lcom/google/android/gms/location/SettingsClient;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mSettingsClient:Lcom/google/android/gms/location/SettingsClient;

    .line 156
    invoke-direct {p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->createLocationCallback()V

    .line 157
    invoke-direct {p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->createLocationRequest()V

    .line 158
    invoke-direct {p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->buildLocationSettingsRequest()V

    .line 159
    invoke-direct {p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->startLocationUpdates()V

    .line 160
    invoke-direct {p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->insertSignalStrengthDetails()V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->showProgressBar()V

    return-void
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mCurrentLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->startTimer()V

    return-void
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Lcom/google/android/gms/location/LocationRequest;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Lcom/google/android/gms/location/LocationCallback;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Lcom/google/android/gms/location/FusedLocationProviderClient;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->fromTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->telManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->myListener:Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLastUpdateTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->updateLocation()V

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->stopLocationUpdates()V

    return-void
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->callback:Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Landroid/app/Activity;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$802(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->showLoader:Z

    return p0
.end method

.method private buildLocationSettingsRequest()V
    .locals 2

    .line 231
    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 232
    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    .line 233
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLocationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

    return-void
.end method

.method private createLocationCallback()V
    .locals 1

    .line 213
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$1;-><init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    return-void
.end method

.method private createLocationRequest()V
    .locals 3

    .line 194
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x2710

    .line 200
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 204
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 206
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method private hideProgressBar()V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$$ExternalSyntheticLambda0;-><init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private insertSignalStrengthDetails()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 170
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;-><init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;Lcom/conceptglobal/pmc/locationprovider/FetchLocation$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->myListener:Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;

    .line 173
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->telManager:Landroid/telephony/TelephonyManager;

    .line 174
    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->myListener:Lcom/conceptglobal/pmc/locationprovider/FetchLocation$MyPhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private showProgressBar()V
    .locals 4

    .line 382
    :try_start_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 384
    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0114

    const/4 v3, 0x0

    .line 385
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    .line 386
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 387
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 388
    const-string v1, "Cancel"

    new-instance v2, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$6;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$6;-><init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 398
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->dialog:Landroid/app/Dialog;

    .line 399
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 404
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private startLocationUpdates()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mSettingsClient:Lcom/google/android/gms/location/SettingsClient;

    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLocationSettingsRequest:Lcom/google/android/gms/location/LocationSettingsRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/SettingsClient;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$4;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$4;-><init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V

    .line 302
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$3;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$3;-><init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V

    .line 326
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method private startTimer()V
    .locals 4

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$2;-><init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V

    .line 285
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getGpsTime()I

    move-result v2

    int-to-long v2, v2

    .line 277
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timer"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Location"

    invoke-static {v3, v0, v1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private stopLocationUpdates()V
    .locals 3

    .line 360
    invoke-direct {p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->hideProgressBar()V

    .line 361
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    sget-object v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->TAG:Ljava/lang/String;

    const-string v1, "stopLocationUpdates: updates never requested, no-op."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mFusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$5;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$5;-><init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V

    .line 371
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private updateLocation()V
    .locals 4

    .line 255
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mCurrentLocation:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->fromTag:Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Location"

    const-string v3, "end-new"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLocationInfo:Lcom/conceptglobal/pmc/model/LocationInfo;

    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/model/LocationInfo;->setLatitude(D)V

    .line 258
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLocationInfo:Lcom/conceptglobal/pmc/model/LocationInfo;

    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/model/LocationInfo;->setLongitude(D)V

    .line 259
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLocationInfo:Lcom/conceptglobal/pmc/model/LocationInfo;

    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/LocationInfo;->setAccuracy(F)V

    .line 260
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLocationInfo:Lcom/conceptglobal/pmc/model/LocationInfo;

    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/model/LocationInfo;->setTimeUpdated(J)V

    .line 261
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->showLoader:Z

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->callback:Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;

    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLocationInfo:Lcom/conceptglobal/pmc/model/LocationInfo;

    invoke-interface {v0, v1}, Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;->onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V

    .line 264
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->callback:Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;

    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mCurrentLocation:Landroid/location/Location;

    invoke-interface {v0, v1}, Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;->onLocationFound(Landroid/location/Location;)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->callback:Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;

    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mLocationInfo:Lcom/conceptglobal/pmc/model/LocationInfo;

    invoke-interface {v0, v1}, Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;->onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V

    .line 268
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->callback:Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;

    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mCurrentLocation:Landroid/location/Location;

    invoke-interface {v0, v1}, Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;->onLocationFound(Landroid/location/Location;)V

    .line 270
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->stopLocationUpdates()V

    :cond_2
    return-void
.end method


# virtual methods
.method synthetic lambda$hideProgressBar$0$com-conceptglobal-pmc-locationprovider-FetchLocation()V
    .locals 1

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 429
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

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

    .line 246
    :cond_1
    sget-object p1, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->TAG:Ljava/lang/String;

    const-string p2, "User chose not to make required location settings changes."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 247
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->mRequestingLocationUpdates:Ljava/lang/Boolean;

    goto :goto_0

    .line 242
    :cond_2
    sget-object p1, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->TAG:Ljava/lang/String;

    const-string p2, "User agreed to make required location settings changes."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
