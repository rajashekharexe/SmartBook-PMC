.class Lcom/conceptglobal/pmc/smartalerts/Basics$2;
.super Ljava/lang/Object;
.source "Basics.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/smartalerts/Basics;->useCurrentLocationAsWorkplace(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/smartalerts/Basics;

.field final synthetic val$callback:Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationCallback;

.field final synthetic val$locationManager:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/smartalerts/Basics;Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationCallback;Landroid/location/LocationManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 430
    iput-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics$2;->this$0:Lcom/conceptglobal/pmc/smartalerts/Basics;

    iput-object p2, p0, Lcom/conceptglobal/pmc/smartalerts/Basics$2;->val$callback:Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationCallback;

    iput-object p3, p0, Lcom/conceptglobal/pmc/smartalerts/Basics$2;->val$locationManager:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    .line 433
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics$2;->val$callback:Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationCallback;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 434
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    .line 433
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationCallback;->callback(DDI)V

    .line 437
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics$2;->val$locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    const-string p1, "could not remove updates because of missing rights"

    invoke-static {p1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->saveErrorLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .line 456
    iget-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics$2;->val$callback:Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationCallback;

    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "provider disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationCallback;->error(Ljava/lang/Throwable;)V

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
