.class Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$19;
.super Ljava/lang/Object;
.source "AudianceFarmersSearchFragment.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->fetchLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;)V
    .locals 0

    .line 1285
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

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

    .line 1288
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1002(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/Double;)Ljava/lang/Double;

    .line 1289
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->access$1102(Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;Ljava/lang/Double;)Ljava/lang/Double;

    .line 1290
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment$19;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmersSearchFragment;->disPlayRadiusData()V

    return-void
.end method

.method public onTimerTimeOut()V
    .locals 0

    return-void
.end method
