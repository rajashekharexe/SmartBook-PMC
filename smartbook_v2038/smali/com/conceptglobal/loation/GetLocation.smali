.class public Lcom/conceptglobal/loation/GetLocation;
.super Ljava/lang/Object;
.source "GetLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/loation/GetLocation$LocationControl;,
        Lcom/conceptglobal/loation/GetLocation$MyLocationListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dbllatitude:Ljava/lang/Double;

.field private dbllongitude:Ljava/lang/Double;

.field private hasLocation:Z

.field private locationControlTask:Lcom/conceptglobal/loation/GetLocation$LocationControl;

.field private myLocationListener:Landroid/location/LocationListener;

.field private myLocationManager:Landroid/location/LocationManager;

.field private tvLatitude:Landroid/widget/TextView;

.field private tvLongitude:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/conceptglobal/loation/GetLocation;->hasLocation:Z

    .line 28
    iput-object p1, p0, Lcom/conceptglobal/loation/GetLocation;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/conceptglobal/loation/GetLocation;->tvLatitude:Landroid/widget/TextView;

    .line 30
    iput-object p3, p0, Lcom/conceptglobal/loation/GetLocation;->tvLongitude:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$0(Lcom/conceptglobal/loation/GetLocation;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/conceptglobal/loation/GetLocation;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1(Lcom/conceptglobal/loation/GetLocation;Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/conceptglobal/loation/GetLocation;->hasLocation:Z

    return-void
.end method

.method static synthetic access$10(Lcom/conceptglobal/loation/GetLocation;Lcom/conceptglobal/loation/GetLocation$LocationControl;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/conceptglobal/loation/GetLocation;->locationControlTask:Lcom/conceptglobal/loation/GetLocation$LocationControl;

    return-void
.end method

.method static synthetic access$11(Lcom/conceptglobal/loation/GetLocation;)Lcom/conceptglobal/loation/GetLocation$LocationControl;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/conceptglobal/loation/GetLocation;->locationControlTask:Lcom/conceptglobal/loation/GetLocation$LocationControl;

    return-object p0
.end method

.method static synthetic access$2(Lcom/conceptglobal/loation/GetLocation;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/conceptglobal/loation/GetLocation;->hasLocation:Z

    return p0
.end method

.method static synthetic access$3(Lcom/conceptglobal/loation/GetLocation;)Ljava/lang/Double;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/conceptglobal/loation/GetLocation;->dbllatitude:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$4(Lcom/conceptglobal/loation/GetLocation;)Ljava/lang/Double;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/conceptglobal/loation/GetLocation;->dbllongitude:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$5(Lcom/conceptglobal/loation/GetLocation;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/conceptglobal/loation/GetLocation;->tvLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$6(Lcom/conceptglobal/loation/GetLocation;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/conceptglobal/loation/GetLocation;->tvLongitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$7(Lcom/conceptglobal/loation/GetLocation;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/conceptglobal/loation/GetLocation;->showRetryAlert()V

    return-void
.end method

.method static synthetic access$8(Lcom/conceptglobal/loation/GetLocation;Ljava/lang/Double;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/loation/GetLocation;->dbllatitude:Ljava/lang/Double;

    return-void
.end method

.method static synthetic access$9(Lcom/conceptglobal/loation/GetLocation;Ljava/lang/Double;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/loation/GetLocation;->dbllongitude:Ljava/lang/Double;

    return-void
.end method

.method private showGPSAlert()V
    .locals 4

    .line 137
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/loation/GetLocation;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    const-string v1, "GPS is turned off. Please enable GPS"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/loation/GetLocation$3;

    invoke-direct {v2, p0}, Lcom/conceptglobal/loation/GetLocation$3;-><init>(Lcom/conceptglobal/loation/GetLocation;)V

    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showRetryAlert()V
    .locals 4

    .line 120
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/loation/GetLocation;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    const-string v1, "Location not found. Do you want to try again?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/loation/GetLocation$1;

    invoke-direct {v2, p0}, Lcom/conceptglobal/loation/GetLocation$1;-><init>(Lcom/conceptglobal/loation/GetLocation;)V

    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    new-instance v1, Lcom/conceptglobal/loation/GetLocation$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/loation/GetLocation$2;-><init>(Lcom/conceptglobal/loation/GetLocation;)V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public startLocation(I)V
    .locals 8

    .line 34
    iget-object v0, p0, Lcom/conceptglobal/loation/GetLocation;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/conceptglobal/loation/GetLocation;->myLocationManager:Landroid/location/LocationManager;

    .line 35
    new-instance v6, Lcom/conceptglobal/loation/GetLocation$MyLocationListener;

    invoke-direct {v6, p0}, Lcom/conceptglobal/loation/GetLocation$MyLocationListener;-><init>(Lcom/conceptglobal/loation/GetLocation;)V

    iput-object v6, p0, Lcom/conceptglobal/loation/GetLocation;->myLocationListener:Landroid/location/LocationListener;

    const/4 v0, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/loation/GetLocation;->myLocationManager:Landroid/location/LocationManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-string v2, "network"

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 48
    new-instance p1, Lcom/conceptglobal/loation/GetLocation$LocationControl;

    invoke-direct {p1, p0, v7}, Lcom/conceptglobal/loation/GetLocation$LocationControl;-><init>(Lcom/conceptglobal/loation/GetLocation;Lcom/conceptglobal/loation/GetLocation$LocationControl;)V

    iput-object p1, p0, Lcom/conceptglobal/loation/GetLocation;->locationControlTask:Lcom/conceptglobal/loation/GetLocation$LocationControl;

    .line 49
    new-array v0, v0, [Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/loation/GetLocation$LocationControl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/loation/GetLocation;->myLocationManager:Landroid/location/LocationManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-string v2, "gps"

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 39
    iget-object p1, p0, Lcom/conceptglobal/loation/GetLocation;->myLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {p1, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 40
    invoke-direct {p0}, Lcom/conceptglobal/loation/GetLocation;->showGPSAlert()V

    goto :goto_0

    .line 42
    :cond_2
    new-instance p1, Lcom/conceptglobal/loation/GetLocation$LocationControl;

    invoke-direct {p1, p0, v7}, Lcom/conceptglobal/loation/GetLocation$LocationControl;-><init>(Lcom/conceptglobal/loation/GetLocation;Lcom/conceptglobal/loation/GetLocation$LocationControl;)V

    iput-object p1, p0, Lcom/conceptglobal/loation/GetLocation;->locationControlTask:Lcom/conceptglobal/loation/GetLocation$LocationControl;

    .line 43
    new-array v0, v0, [Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/loation/GetLocation$LocationControl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method
