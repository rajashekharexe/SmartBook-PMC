.class public Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;
.super Ljava/lang/Object;
.source "GingerbreadLastLocationFinder.java"

# interfaces
.implements Lcom/gani/mygpslocation/ILastLocationFinder;


# static fields
.field protected static SINGLE_LOCATION_UPDATE_ACTION:Ljava/lang/String; = "com.radioactiveyak.places.SINGLE_LOCATION_UPDATE_ACTION"

.field protected static TAG:Ljava/lang/String; = "LastLocationFinder"


# instance fields
.field protected context:Landroid/content/Context;

.field protected criteria:Landroid/location/Criteria;

.field protected locationListener:Landroid/location/LocationListener;

.field protected locationManager:Landroid/location/LocationManager;

.field protected singleUpatePI:Landroid/app/PendingIntent;

.field protected singleUpdateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder$1;

    invoke-direct {v0, p0}, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder$1;-><init>(Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;)V

    iput-object v0, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->singleUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-object p1, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->context:Landroid/content/Context;

    .line 60
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->locationManager:Landroid/location/LocationManager;

    .line 64
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    iput-object v0, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->criteria:Landroid/location/Criteria;

    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 69
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->SINGLE_LOCATION_UPDATE_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 70
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->singleUpatePI:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->singleUpatePI:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public getLastBestLocation(IJ)Landroid/location/Location;
    .locals 12

    .line 90
    iget-object v0, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const-wide/high16 v3, -0x8000000000000000L

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 113
    iget-object v0, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_2

    cmp-long v0, v3, p2

    if-ltz v0, :cond_1

    int-to-float p1, p1

    cmpl-float p1, v5, p1

    if-lez p1, :cond_2

    .line 114
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    sget-object p2, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->SINGLE_LOCATION_UPDATE_ACTION:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->singleUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    iget-object p1, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->locationManager:Landroid/location/LocationManager;

    iget-object p2, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->criteria:Landroid/location/Criteria;

    iget-object p3, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->singleUpatePI:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2, p3}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V

    :cond_2
    return-object v1

    .line 91
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 92
    iget-object v7, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v7, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 94
    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    .line 95
    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v10, v8, p2

    if-lez v10, :cond_4

    cmpg-float v11, v7, v5

    if-gez v11, :cond_4

    move-object v1, v6

    move v5, v7

    :goto_1
    move-wide v3, v8

    goto :goto_0

    :cond_4
    if-gez v10, :cond_0

    cmpl-float v7, v5, v2

    if-nez v7, :cond_0

    cmp-long v7, v8, v3

    if-lez v7, :cond_0

    move-object v1, v6

    goto :goto_1
.end method

.method public setChangedLocationListener(Landroid/location/LocationListener;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->locationListener:Landroid/location/LocationListener;

    return-void
.end method
