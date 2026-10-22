.class Lcom/conceptglobal/pmc/locationprovider/FetchLocation$4;
.super Ljava/lang/Object;
.source "FetchLocation.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->startLocationUpdates()V
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
.field final synthetic this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$4;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/android/gms/location/LocationSettingsResponse;)V
    .locals 3

    .line 305
    invoke-static {}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "All location settings are satisfied."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$4;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-static {p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$900(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 308
    iget-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$4;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-static {p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$1000(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V

    .line 310
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$4;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-static {p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$1100(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 312
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Timer"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Location"

    invoke-static {v2, p1, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$4;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-static {p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$1400(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$4;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-static {v0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$1200(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$4;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    .line 321
    invoke-static {v1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$1300(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)Lcom/google/android/gms/location/LocationCallback;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 320
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    .line 322
    iget-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$4;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-static {p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$300(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 302
    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResponse;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$4;->onSuccess(Lcom/google/android/gms/location/LocationSettingsResponse;)V

    return-void
.end method
