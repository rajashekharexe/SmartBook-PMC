.class public Lcom/conceptglobal/pmc/fotracker/ServiceBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "ServiceBroadcast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private startDataInsertedService(Landroid/content/Context;)V
    .locals 2

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 17
    sput-boolean v1, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->IS_SERVICE_RUNNING:Z

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 11
    const-string p1, "test"

    const-string p2, "Service broadcast called ::::::::::::::"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
