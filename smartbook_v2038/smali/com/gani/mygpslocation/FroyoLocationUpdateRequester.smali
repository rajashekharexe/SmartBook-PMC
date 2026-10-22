.class public Lcom/gani/mygpslocation/FroyoLocationUpdateRequester;
.super Lcom/gani/mygpslocation/LocationUpdateRequester;
.source "FroyoLocationUpdateRequester.java"


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/gani/mygpslocation/LocationUpdateRequester;-><init>(Landroid/location/LocationManager;)V

    return-void
.end method


# virtual methods
.method public requestPassiveLocationUpdates(JJLandroid/app/PendingIntent;)V
    .locals 6

    .line 41
    iget-object v0, p0, Lcom/gani/mygpslocation/FroyoLocationUpdateRequester;->locationManager:Landroid/location/LocationManager;

    sget-wide v2, Lcom/gani/mygpslocation/PlacesConstants;->MAX_TIME:J

    sget p1, Lcom/gani/mygpslocation/PlacesConstants;->MAX_DISTANCE:I

    int-to-float v4, p1

    const-string v1, "passive"

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    return-void
.end method
