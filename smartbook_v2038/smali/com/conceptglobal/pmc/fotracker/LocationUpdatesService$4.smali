.class Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$4;
.super Ljava/lang/Object;
.source "LocationUpdatesService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->getLastLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$4;->this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 495
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$4;->this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->access$802(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;Landroid/location/Location;)Landroid/location/Location;

    goto :goto_0

    .line 498
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to get location."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
