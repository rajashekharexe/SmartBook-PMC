.class Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker$1;
.super Ljava/lang/Object;
.source "LocationWorker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->initServiceConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker$1;->this$0:Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 131
    check-cast p2, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$LocalBinder;

    .line 132
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$LocalBinder;->getService()Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    .line 133
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker$1;->this$0:Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->access$002(Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;Z)Z

    .line 134
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->requestLocationUpdates()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 p1, 0x0

    .line 139
    sput-object p1, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    .line 140
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker$1;->this$0:Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;->access$002(Lcom/conceptglobal/pmc/fotracker/worker/LocationWorker;Z)Z

    return-void
.end method
