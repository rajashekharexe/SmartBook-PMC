.class public Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$MyLocationListener;
.super Ljava/lang/Object;
.source "FarmerSelectionActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$MyLocationListener;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 791
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$MyLocationListener;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$502(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Ljava/lang/Double;)Ljava/lang/Double;

    .line 792
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$MyLocationListener;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$602(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Ljava/lang/Double;)Ljava/lang/Double;

    .line 793
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$MyLocationListener;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$402(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Z)Z

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    .line 801
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$MyLocationListener;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$300(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_gpsEnabledAlert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
