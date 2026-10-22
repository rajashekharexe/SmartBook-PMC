.class public Lcom/gani/mygpslocation/LegacyLastLocationFinder;
.super Ljava/lang/Object;
.source "LegacyLastLocationFinder.java"

# interfaces
.implements Lcom/gani/mygpslocation/ILastLocationFinder;


# static fields
.field protected static TAG:Ljava/lang/String; = "PreGingerbreadLastLocationFinder"


# instance fields
.field protected context:Landroid/content/Context;

.field protected criteria:Landroid/location/Criteria;

.field protected locationListener:Landroid/location/LocationListener;

.field protected locationManager:Landroid/location/LocationManager;

.field protected singeUpdateListener:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/gani/mygpslocation/LegacyLastLocationFinder$1;

    invoke-direct {v0, p0}, Lcom/gani/mygpslocation/LegacyLastLocationFinder$1;-><init>(Lcom/gani/mygpslocation/LegacyLastLocationFinder;)V

    iput-object v0, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->singeUpdateListener:Landroid/location/LocationListener;

    .line 54
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->locationManager:Landroid/location/LocationManager;

    .line 55
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    iput-object v0, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->criteria:Landroid/location/Criteria;

    const/4 v1, 0x2

    .line 59
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 60
    iput-object p1, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->singeUpdateListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public getLastBestLocation(IJ)Landroid/location/Location;
    .locals 12

    .line 81
    iget-object v0, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const-wide v3, 0x7fffffffffffffffL

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 106
    iget-object v0, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_2

    cmp-long v0, v3, p2

    if-gtz v0, :cond_1

    int-to-float p1, p1

    cmpl-float p1, v5, p1

    if-lez p1, :cond_2

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->locationManager:Landroid/location/LocationManager;

    iget-object p2, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->criteria:Landroid/location/Criteria;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 109
    iget-object v2, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->locationManager:Landroid/location/LocationManager;

    iget-object v7, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->singeUpdateListener:Landroid/location/LocationListener;

    iget-object p1, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_2
    return-object v1

    .line 82
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 83
    iget-object v7, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v7, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 85
    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    .line 86
    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v10, v8, p2

    if-gez v10, :cond_4

    cmpg-float v11, v7, v5

    if-gez v11, :cond_4

    move-object v1, v6

    move v5, v7

    :goto_1
    move-wide v3, v8

    goto :goto_0

    :cond_4
    if-lez v10, :cond_0

    cmpl-float v7, v5, v2

    if-nez v7, :cond_0

    cmp-long v7, v8, v3

    if-gez v7, :cond_0

    move-object v1, v6

    goto :goto_1
.end method

.method public setChangedLocationListener(Landroid/location/LocationListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->locationListener:Landroid/location/LocationListener;

    return-void
.end method
