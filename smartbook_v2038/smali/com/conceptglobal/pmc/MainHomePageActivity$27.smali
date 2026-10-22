.class Lcom/conceptglobal/pmc/MainHomePageActivity$27;
.super Ljava/lang/Object;
.source "MainHomePageActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/MainHomePageActivity;->fetchLocationEndDay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V
    .locals 0

    .line 1381
    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$27;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

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

    .line 1387
    :try_start_0
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertCoordinates(Ljava/lang/Double;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1389
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1391
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$27;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$1400(Lcom/conceptglobal/pmc/MainHomePageActivity;Z)V

    return-void
.end method

.method public onTimerTimeOut()V
    .locals 0

    return-void
.end method
