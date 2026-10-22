.class Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings$2;
.super Ljava/lang/Object;
.source "FetchLocationSettings.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;->startLocationUpdates()V
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
.field final synthetic this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings$2;->this$0:Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/android/gms/location/LocationSettingsResponse;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 233
    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResponse;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocationSettings$2;->onSuccess(Lcom/google/android/gms/location/LocationSettingsResponse;)V

    return-void
.end method
