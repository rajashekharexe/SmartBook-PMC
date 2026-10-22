.class public Lcom/conceptglobal/pmc/utils/OpenNetworkBroadCast;
.super Landroid/content/BroadcastReceiver;
.source "OpenNetworkBroadCast.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/NetworkListener;


# instance fields
.field private networkListener:Lcom/conceptglobal/pmc/interfaces/NetworkListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetWorkDisconnected()V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 19
    iput-object p0, p0, Lcom/conceptglobal/pmc/utils/OpenNetworkBroadCast;->networkListener:Lcom/conceptglobal/pmc/interfaces/NetworkListener;

    .line 21
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    const/4 p2, 0x1

    .line 22
    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 26
    :goto_0
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    :cond_1
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 33
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/OpenNetworkBroadCast;->networkListener:Lcom/conceptglobal/pmc/interfaces/NetworkListener;

    invoke-interface {p1}, Lcom/conceptglobal/pmc/interfaces/NetworkListener;->onNetWorkDisconnected()V

    goto :goto_2

    .line 31
    :cond_3
    :goto_1
    const-string p1, "Netowrk"

    const-string p2, "Network connected"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
