.class public Lcom/conceptglobal/pmc/service/WeatherService;
.super Landroid/app/IntentService;
.source "WeatherService.java"


# static fields
.field private static final ACTION_FORECAST:Ljava/lang/String; = "com.conceptglobal.pmc.service.action.Forecast"

.field private static final ACTION_TODAY:Ljava/lang/String; = "com.conceptglobal.pmc.service.action.Today"

.field private static final EXTRA_PARAM1:Ljava/lang/String; = "com.conceptglobal.pmc.service.extra.PARAM1"

.field private static final EXTRA_PARAM2:Ljava/lang/String; = "com.conceptglobal.pmc.service.extra.PARAM2"

.field private static final TAG:Ljava/lang/String; = "SyncDataService"

.field private static dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;


# instance fields
.field bundle:Landroid/os/Bundle;

.field private callbackActivity:Ljava/lang/String;

.field private receiver:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/service/WeatherService;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    const-string v0, "WeatherService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/service/WeatherService;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method private handleActionBaz(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 129
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleActionFoo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 120
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static startActionForecast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/service/WeatherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const-string v1, "com.conceptglobal.pmc.service.action.Forecast"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "com.conceptglobal.pmc.service.extra.PARAM1"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string p1, "com.conceptglobal.pmc.service.extra.PARAM2"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static startActionToday(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/service/WeatherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string v1, "com.conceptglobal.pmc.service.action.Today"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "com.conceptglobal.pmc.service.extra.PARAM1"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string p1, "com.conceptglobal.pmc.service.extra.PARAM2"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "callbackActivity--"

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    const-string v1, "SyncDataService"

    const-string v2, "onHandleIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->checkDataBase()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const-string v1, "receiver"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    iput-object v1, p0, Lcom/conceptglobal/pmc/service/WeatherService;->receiver:Landroid/os/ResultReceiver;

    .line 95
    const-string v1, "callbackActivity"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "callbackActivity"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/service/WeatherService;->callbackActivity:Ljava/lang/String;

    .line 99
    :cond_0
    const-string p1, "SyncDataService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/service/WeatherService;->callbackActivity:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/service/WeatherService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 101
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/WeatherService;->receiver:Landroid/os/ResultReceiver;

    if-eqz p1, :cond_1

    .line 102
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 110
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
