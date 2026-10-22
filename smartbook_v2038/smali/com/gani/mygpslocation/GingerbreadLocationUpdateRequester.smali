.class public Lcom/gani/mygpslocation/GingerbreadLocationUpdateRequester;
.super Lcom/gani/mygpslocation/FroyoLocationUpdateRequester;
.source "GingerbreadLocationUpdateRequester.java"


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/gani/mygpslocation/FroyoLocationUpdateRequester;-><init>(Landroid/location/LocationManager;)V

    return-void
.end method


# virtual methods
.method public requestLocationUpdates(JJLandroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 6

    .line 42
    iget-object v0, p0, Lcom/gani/mygpslocation/GingerbreadLocationUpdateRequester;->locationManager:Landroid/location/LocationManager;

    long-to-float v3, p3

    move-wide v1, p1

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/app/PendingIntent;)V

    return-void
.end method
