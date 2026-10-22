.class public Lcom/conceptglobal/pmc/smartalerts/locationservice/Watchdog;
.super Landroid/content/BroadcastReceiver;
.source "Watchdog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 31
    invoke-static {p1}, Lcom/conceptglobal/pmc/smartalerts/Basics;->get(Landroid/content/Context;)Lcom/conceptglobal/pmc/smartalerts/Basics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/smartalerts/Basics;->periodicHook()V

    return-void
.end method
