.class Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$6;
.super Ljava/lang/Object;
.source "FarmerSelectionActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->fetchLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)V
    .locals 0

    .line 864
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFound(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 3

    .line 867
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$502(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Ljava/lang/Double;)Ljava/lang/Double;

    .line 868
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$602(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Ljava/lang/Double;)Ljava/lang/Double;

    .line 869
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$6;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->disPlayRadiusData()V

    return-void
.end method

.method public onTimerTimeOut()V
    .locals 0

    return-void
.end method
