.class public Lcom/conceptglobal/loation/GetLocation$MyLocationListener;
.super Ljava/lang/Object;
.source "GetLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/loation/GetLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/loation/GetLocation;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/loation/GetLocation;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/conceptglobal/loation/GetLocation$MyLocationListener;->this$0:Lcom/conceptglobal/loation/GetLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/conceptglobal/loation/GetLocation$MyLocationListener;->this$0:Lcom/conceptglobal/loation/GetLocation;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/loation/GetLocation;->access$8(Lcom/conceptglobal/loation/GetLocation;Ljava/lang/Double;)V

    .line 107
    iget-object v0, p0, Lcom/conceptglobal/loation/GetLocation$MyLocationListener;->this$0:Lcom/conceptglobal/loation/GetLocation;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/loation/GetLocation;->access$9(Lcom/conceptglobal/loation/GetLocation;Ljava/lang/Double;)V

    .line 108
    iget-object p1, p0, Lcom/conceptglobal/loation/GetLocation$MyLocationListener;->this$0:Lcom/conceptglobal/loation/GetLocation;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/conceptglobal/loation/GetLocation;->access$1(Lcom/conceptglobal/loation/GetLocation;Z)V

    :cond_0
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
