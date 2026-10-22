.class Lcom/conceptglobal/pmc/fragments/ToDoFragment$6;
.super Ljava/lang/Object;
.source "ToDoFragment.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/ToDoFragment;->fetchLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)V
    .locals 0

    .line 1005
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFound(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onLocationFound(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 5

    .line 1008
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->access$400(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->access$400(Lcom/conceptglobal/pmc/fragments/ToDoFragment;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLatitude()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->access$1502(Lcom/conceptglobal/pmc/fragments/ToDoFragment;Z)Z

    .line 1010
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->access$402(Lcom/conceptglobal/pmc/fragments/ToDoFragment;Ljava/lang/Double;)Ljava/lang/Double;

    .line 1011
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->access$502(Lcom/conceptglobal/pmc/fragments/ToDoFragment;Ljava/lang/Double;)Ljava/lang/Double;

    .line 1015
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ToDoFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/ToDoFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ToDoFragment;->disPlaySVRadiusData()V

    :cond_1
    return-void
.end method

.method public onTimerTimeOut()V
    .locals 0

    return-void
.end method
