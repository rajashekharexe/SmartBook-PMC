.class Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$19;
.super Ljava/lang/Object;
.source "RetailersSearchFragment.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->fetchLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V
    .locals 0

    .line 1353
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFound(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 10

    .line 1356
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3400(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "location found"

    invoke-static {v0, v3, v1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1302(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/Double;)Ljava/lang/Double;

    .line 1358
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1402(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/Double;)Ljava/lang/Double;

    .line 1359
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->isFromSelfAssignment:Z

    if-eqz p1, :cond_0

    .line 1360
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3500(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double v0, v0, v2

    .line 1361
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1300(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v2, v0

    .line 1362
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1300(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v4, v0

    .line 1363
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1400(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v6, v0

    .line 1364
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$1400(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double/2addr v8, v0

    .line 1365
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " and latitude between cast( "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " as numeric) and cast("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " as numeric) "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and longitude between cast( "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1367
    new-instance v0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$1;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocationFilterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1370
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->disPlayRadiusData()V

    :goto_0
    return-void
.end method

.method public onTimerTimeOut()V
    .locals 0

    return-void
.end method
