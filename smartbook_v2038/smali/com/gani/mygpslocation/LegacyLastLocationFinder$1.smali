.class Lcom/gani/mygpslocation/LegacyLastLocationFinder$1;
.super Ljava/lang/Object;
.source "LegacyLastLocationFinder.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gani/mygpslocation/LegacyLastLocationFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gani/mygpslocation/LegacyLastLocationFinder;


# direct methods
.method constructor <init>(Lcom/gani/mygpslocation/LegacyLastLocationFinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder$1;->this$0:Lcom/gani/mygpslocation/LegacyLastLocationFinder;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .line 123
    sget-object v0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Single Location Update Received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder$1;->this$0:Lcom/gani/mygpslocation/LegacyLastLocationFinder;

    iget-object v0, v0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder$1;->this$0:Lcom/gani/mygpslocation/LegacyLastLocationFinder;

    iget-object v0, v0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->locationListener:Landroid/location/LocationListener;

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder$1;->this$0:Lcom/gani/mygpslocation/LegacyLastLocationFinder;

    iget-object p1, p1, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->locationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/gani/mygpslocation/LegacyLastLocationFinder$1;->this$0:Lcom/gani/mygpslocation/LegacyLastLocationFinder;

    iget-object v0, v0, Lcom/gani/mygpslocation/LegacyLastLocationFinder;->singeUpdateListener:Landroid/location/LocationListener;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

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
