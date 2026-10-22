.class Lcom/conceptglobal/pmc/fotracker/DataInsertedService$1;
.super Ljava/lang/Object;
.source "DataInsertedService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->initServiceConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/DataInsertedService;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$1;->this$0:Lcom/conceptglobal/pmc/fotracker/DataInsertedService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 300
    check-cast p2, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$LocalBinder;

    .line 301
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$LocalBinder;->getService()Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    .line 302
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$1;->this$0:Lcom/conceptglobal/pmc/fotracker/DataInsertedService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->access$402(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;Z)Z

    .line 303
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->requestLocationUpdates()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 p1, 0x0

    .line 308
    sput-object p1, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    .line 309
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$1;->this$0:Lcom/conceptglobal/pmc/fotracker/DataInsertedService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->access$402(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;Z)Z

    return-void
.end method
