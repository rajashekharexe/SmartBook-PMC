.class Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$1;
.super Lcom/google/android/gms/location/LocationCallback;
.source "LocationUpdatesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$1;->this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 3

    .line 220
    invoke-super {p0, p1}, Lcom/google/android/gms/location/LocationCallback;->onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V

    .line 221
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$1;->this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location not available. Location staus--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$1;->this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->access$100(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$1;->this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    const-string v0, "Unable to fetch the location, please check gps settings"

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->access$200(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 1

    .line 214
    invoke-super {p0, p1}, Lcom/google/android/gms/location/LocationCallback;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V

    .line 215
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$1;->this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->access$000(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;Landroid/location/Location;)V

    return-void
.end method
