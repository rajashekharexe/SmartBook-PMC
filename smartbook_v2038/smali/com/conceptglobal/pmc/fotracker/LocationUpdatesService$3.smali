.class Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$3;
.super Ljava/lang/Object;
.source "LocationUpdatesService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->requestLocationUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/gms/location/LocationSettingsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$3;->this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/android/gms/location/LocationSettingsResponse;)V
    .locals 3

    .line 372
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$3;->this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->access$700(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$3;->this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->access$500(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$3;->this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    .line 373
    invoke-static {v1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->access$600(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)Lcom/google/android/gms/location/LocationCallback;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 372
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 368
    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResponse;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$3;->onSuccess(Lcom/google/android/gms/location/LocationSettingsResponse;)V

    return-void
.end method
