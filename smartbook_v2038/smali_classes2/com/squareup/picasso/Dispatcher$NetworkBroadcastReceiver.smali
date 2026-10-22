.class Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkBroadcastReceiver"
.end annotation


# static fields
.field private static final EXTRA_AIRPLANE_STATE:Ljava/lang/String; = "state"


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic this$0:Lcom/squareup/picasso/Dispatcher;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Dispatcher;Landroid/content/Context;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->this$0:Lcom/squareup/picasso/Dispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 281
    const-string p1, "connectivity"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->connectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 305
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 306
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 308
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object p1, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->this$0:Lcom/squareup/picasso/Dispatcher;

    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/Dispatcher;->dispatchAirplaneModeChange(Z)V

    goto :goto_0

    .line 310
    :cond_1
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 311
    iget-object p1, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->this$0:Lcom/squareup/picasso/Dispatcher;

    iget-object p2, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/Dispatcher;->dispatchNetworkStateChange(Landroid/net/NetworkInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method register()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->this$0:Lcom/squareup/picasso/Dispatcher;

    iget-object v0, v0, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Lcom/squareup/picasso/PicassoExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->this$0:Lcom/squareup/picasso/Dispatcher;

    iget-object v0, v0, Lcom/squareup/picasso/Dispatcher;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/squareup/picasso/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 287
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 288
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 290
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->this$0:Lcom/squareup/picasso/Dispatcher;

    iget-object v0, v0, Lcom/squareup/picasso/Dispatcher;->context:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method unregister()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->this$0:Lcom/squareup/picasso/Dispatcher;

    iget-object v0, v0, Lcom/squareup/picasso/Dispatcher;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
