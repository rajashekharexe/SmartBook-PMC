.class Lcom/conceptglobal/pmc/fotracker/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fotracker/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/MainActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity$1;->this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 57
    check-cast p2, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$LocalBinder;

    .line 58
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity$1;->this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$LocalBinder;->getService()Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->access$002(Lcom/conceptglobal/pmc/fotracker/MainActivity;Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    .line 59
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity$1;->this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->access$102(Lcom/conceptglobal/pmc/fotracker/MainActivity;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity$1;->this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->access$002(Lcom/conceptglobal/pmc/fotracker/MainActivity;Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;)Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    .line 65
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/MainActivity$1;->this$0:Lcom/conceptglobal/pmc/fotracker/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fotracker/MainActivity;->access$102(Lcom/conceptglobal/pmc/fotracker/MainActivity;Z)Z

    return-void
.end method
