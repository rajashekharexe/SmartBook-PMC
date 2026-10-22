.class Lcom/conceptglobal/pmc/fragments/FOHome$3;
.super Ljava/lang/Object;
.source "FOHome.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/FOHome;->fetchLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FOHome;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/FOHome;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$3;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFound(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 4

    .line 849
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome$3;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$1102(Lcom/conceptglobal/pmc/fragments/FOHome;Z)Z

    .line 850
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome$3;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$602(Lcom/conceptglobal/pmc/fragments/FOHome;Ljava/lang/Double;)Ljava/lang/Double;

    .line 851
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome$3;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$1202(Lcom/conceptglobal/pmc/fragments/FOHome;Ljava/lang/Double;)Ljava/lang/Double;

    .line 852
    new-instance p1, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome$3;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;-><init>(Lcom/conceptglobal/pmc/fragments/FOHome;Lcom/conceptglobal/pmc/fragments/FOHome$1;)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onTimerTimeOut()V
    .locals 0

    return-void
.end method
