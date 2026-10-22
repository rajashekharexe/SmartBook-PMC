.class Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$19;
.super Ljava/lang/Object;
.source "FarmersSearchFragment.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->fetchLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V
    .locals 0

    .line 1428
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

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

    .line 1431
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1002(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/Double;)Ljava/lang/Double;

    .line 1432
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$1102(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/Double;)Ljava/lang/Double;

    .line 1433
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->disPlayRadiusData()V

    return-void
.end method

.method public onTimerTimeOut()V
    .locals 0

    return-void
.end method
