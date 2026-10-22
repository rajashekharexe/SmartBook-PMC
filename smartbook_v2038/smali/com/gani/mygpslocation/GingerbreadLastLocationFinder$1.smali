.class Lcom/gani/mygpslocation/GingerbreadLastLocationFinder$1;
.super Landroid/content/BroadcastReceiver;
.source "GingerbreadLastLocationFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;


# direct methods
.method constructor <init>(Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder$1;->this$0:Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;

    .line 128
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder$1;->this$0:Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;

    iget-object v0, v0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->singleUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    const-string p1, "location"

    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    .line 136
    iget-object p2, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder$1;->this$0:Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;

    iget-object p2, p2, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->locationListener:Landroid/location/LocationListener;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 137
    iget-object p2, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder$1;->this$0:Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;

    iget-object p2, p2, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->locationListener:Landroid/location/LocationListener;

    invoke-interface {p2, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder$1;->this$0:Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;

    iget-object p1, p1, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->locationManager:Landroid/location/LocationManager;

    iget-object p2, p0, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder$1;->this$0:Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;

    iget-object p2, p2, Lcom/gani/mygpslocation/GingerbreadLastLocationFinder;->singleUpatePI:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    return-void
.end method
