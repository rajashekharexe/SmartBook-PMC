.class public final Lcom/evernote/android/job/util/Device;
.super Ljava/lang/Object;
.source "Device.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryStatus(Landroid/content/Context;)Lcom/evernote/android/job/util/BatteryStatus;
    .locals 4

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_0

    .line 48
    sget-object p0, Lcom/evernote/android/job/util/BatteryStatus;->DEFAULT:Lcom/evernote/android/job/util/BatteryStatus;

    return-object p0

    .line 51
    :cond_0
    const-string v0, "level"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 52
    const-string v2, "scale"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 56
    const-string v1, "plugged"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    const/4 v3, 0x4

    if-ne p0, v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 61
    :cond_2
    new-instance p0, Lcom/evernote/android/job/util/BatteryStatus;

    invoke-direct {p0, v2, v0}, Lcom/evernote/android/job/util/BatteryStatus;-><init>(ZF)V

    return-object p0
.end method

.method public static getNetworkType(Landroid/content/Context;)Lcom/evernote/android/job/JobRequest$NetworkType;
    .locals 2

    .line 91
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 94
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 99
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {p0}, Landroidx/core/net/ConnectivityManagerCompat;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 105
    sget-object p0, Lcom/evernote/android/job/JobRequest$NetworkType;->UNMETERED:Lcom/evernote/android/job/JobRequest$NetworkType;

    return-object p0

    .line 108
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 109
    sget-object p0, Lcom/evernote/android/job/JobRequest$NetworkType;->CONNECTED:Lcom/evernote/android/job/JobRequest$NetworkType;

    return-object p0

    .line 111
    :cond_2
    sget-object p0, Lcom/evernote/android/job/JobRequest$NetworkType;->NOT_ROAMING:Lcom/evernote/android/job/JobRequest$NetworkType;

    return-object p0

    .line 100
    :cond_3
    :goto_0
    sget-object p0, Lcom/evernote/android/job/JobRequest$NetworkType;->ANY:Lcom/evernote/android/job/JobRequest$NetworkType;

    return-object p0

    .line 96
    :catchall_0
    sget-object p0, Lcom/evernote/android/job/JobRequest$NetworkType;->ANY:Lcom/evernote/android/job/JobRequest$NetworkType;

    return-object p0
.end method

.method public static isIdle(Landroid/content/Context;)Z
    .locals 3

    .line 66
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    .line 73
    invoke-static {p0}, Lkotlin/io/path/PathRelativizer$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/PowerManager;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2

    .line 75
    :cond_2
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method public static isStorageLow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
