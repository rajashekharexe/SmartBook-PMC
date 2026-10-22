.class Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$5;
.super Ljava/lang/Object;
.source "LocationUpdatesService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$5;->this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$5;->this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->access$800(Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$5;->this$0:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->mOnTimerCallback:Lcom/conceptglobal/pmc/fotracker/util/IOnTimerCallback;

    invoke-interface {v0}, Lcom/conceptglobal/pmc/fotracker/util/IOnTimerCallback;->onTimerTimeOut()V

    :cond_0
    return-void
.end method
