.class Lcom/conceptglobal/pmc/locationprovider/FetchLocation$1;
.super Lcom/google/android/gms/location/LocationCallback;
.source "FetchLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->createLocationCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$1;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    .line 216
    invoke-super {p0, p1}, Lcom/google/android/gms/location/LocationCallback;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V

    .line 218
    iget-object v0, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$1;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$102(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;Landroid/location/Location;)Landroid/location/Location;

    .line 219
    iget-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$1;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$202(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    iget-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation$1;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    invoke-static {p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;->access$300(Lcom/conceptglobal/pmc/locationprovider/FetchLocation;)V

    return-void
.end method
