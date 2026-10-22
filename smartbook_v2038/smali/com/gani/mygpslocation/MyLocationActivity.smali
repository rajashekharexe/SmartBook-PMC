.class public Lcom/gani/mygpslocation/MyLocationActivity;
.super Landroid/app/Activity;
.source "MyLocationActivity.java"


# instance fields
.field TAG:Ljava/lang/String;

.field getlocation:Landroid/widget/Button;

.field getlocation2:Landroid/widget/Button;

.field protected lastLocationFinder:Lcom/gani/mygpslocation/ILastLocationFinder;

.field protected oneShotLastLocationUpdateListener:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const-string v0, "Check Log"

    iput-object v0, p0, Lcom/gani/mygpslocation/MyLocationActivity;->TAG:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/gani/mygpslocation/MyLocationActivity$1;

    invoke-direct {v0, p0}, Lcom/gani/mygpslocation/MyLocationActivity$1;-><init>(Lcom/gani/mygpslocation/MyLocationActivity;)V

    iput-object v0, p0, Lcom/gani/mygpslocation/MyLocationActivity;->oneShotLastLocationUpdateListener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$0(Lcom/gani/mygpslocation/MyLocationActivity;)Landroid/location/Location;
    .locals 0

    .line 168
    invoke-direct {p0}, Lcom/gani/mygpslocation/MyLocationActivity;->getBestLocation()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method private age_ms_api_17(Landroid/location/Location;)J
    .locals 4

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 157
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    .line 156
    div-long/2addr v0, v2

    return-wide v0
.end method

.method private age_ms_api_pre_17(Landroid/location/Location;)J
    .locals 4

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getBestLocation()Landroid/location/Location;
    .locals 10

    .line 169
    const-string v0, "gps"

    invoke-direct {p0, v0}, Lcom/gani/mygpslocation/MyLocationActivity;->getLocationByProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 171
    const-string v1, "network"

    invoke-direct {p0, v1}, Lcom/gani/mygpslocation/MyLocationActivity;->getLocationByProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/gani/mygpslocation/MyLocationActivity;->TAG:Ljava/lang/String;

    const-string v2, "No GPS Location available."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/gani/mygpslocation/MyLocationActivity;->TAG:Ljava/lang/String;

    const-string v2, "No Network Location available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 184
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    sub-long/2addr v2, v4

    .line 185
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v4, v2

    if-gez v8, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 186
    :goto_0
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v5, v8, v2

    if-gez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-nez v4, :cond_4

    .line 189
    iget-object v1, p0, Lcom/gani/mygpslocation/MyLocationActivity;->TAG:Ljava/lang/String;

    const-string v2, "Returning current GPS Location"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    if-nez v6, :cond_5

    .line 194
    iget-object v0, p0, Lcom/gani/mygpslocation/MyLocationActivity;->TAG:Ljava/lang/String;

    const-string v2, "GPS is old, Network is current, returning network"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 198
    :cond_5
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_6

    .line 199
    iget-object v1, p0, Lcom/gani/mygpslocation/MyLocationActivity;->TAG:Ljava/lang/String;

    const-string v2, "Both are old, returning gps(newer)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 202
    :cond_6
    iget-object v0, p0, Lcom/gani/mygpslocation/MyLocationActivity;->TAG:Ljava/lang/String;

    const-string v2, "Both are old, returning network(newer)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getLocationByProvider(Ljava/lang/String;)Landroid/location/Location;
    .locals 3

    .line 215
    invoke-virtual {p0}, Lcom/gani/mygpslocation/MyLocationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 216
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 215
    check-cast v0, Landroid/location/LocationManager;

    .line 218
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    iget-object v0, p0, Lcom/gani/mygpslocation/MyLocationActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot acces Provider "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public age_minutes(Landroid/location/Location;)J
    .locals 4

    .line 145
    invoke-virtual {p0, p1}, Lcom/gani/mygpslocation/MyLocationActivity;->age_ms(Landroid/location/Location;)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public age_ms(Landroid/location/Location;)J
    .locals 2

    .line 150
    invoke-direct {p0, p1}, Lcom/gani/mygpslocation/MyLocationActivity;->age_ms_api_17(Landroid/location/Location;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x7f030000

    .line 29
    invoke-virtual {p0, p1}, Lcom/gani/mygpslocation/MyLocationActivity;->setContentView(I)V

    .line 45
    invoke-static {p0}, Lcom/gani/mygpslocation/PlatformSpecificImplementationFactory;->getLastLocationFinder(Landroid/content/Context;)Lcom/gani/mygpslocation/ILastLocationFinder;

    move-result-object p1

    iput-object p1, p0, Lcom/gani/mygpslocation/MyLocationActivity;->lastLocationFinder:Lcom/gani/mygpslocation/ILastLocationFinder;

    .line 46
    iget-object v0, p0, Lcom/gani/mygpslocation/MyLocationActivity;->oneShotLastLocationUpdateListener:Landroid/location/LocationListener;

    invoke-interface {p1, v0}, Lcom/gani/mygpslocation/ILastLocationFinder;->setChangedLocationListener(Landroid/location/LocationListener;)V

    const/high16 p1, 0x7f060000

    .line 47
    invoke-virtual {p0, p1}, Lcom/gani/mygpslocation/MyLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/gani/mygpslocation/MyLocationActivity;->getlocation:Landroid/widget/Button;

    const p1, 0x7f060001

    .line 48
    invoke-virtual {p0, p1}, Lcom/gani/mygpslocation/MyLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/gani/mygpslocation/MyLocationActivity;->getlocation2:Landroid/widget/Button;

    .line 49
    new-instance v0, Lcom/gani/mygpslocation/MyLocationActivity$2;

    invoke-direct {v0, p0}, Lcom/gani/mygpslocation/MyLocationActivity$2;-><init>(Lcom/gani/mygpslocation/MyLocationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/gani/mygpslocation/MyLocationActivity;->getlocation:Landroid/widget/Button;

    new-instance v0, Lcom/gani/mygpslocation/MyLocationActivity$3;

    invoke-direct {v0, p0}, Lcom/gani/mygpslocation/MyLocationActivity$3;-><init>(Lcom/gani/mygpslocation/MyLocationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
