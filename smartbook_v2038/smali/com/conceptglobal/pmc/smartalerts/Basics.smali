.class public Lcom/conceptglobal/pmc/smartalerts/Basics;
.super Ljava/lang/Object;
.source "Basics.java"


# instance fields
.field private context:Landroid/content/Context;

.field private documentTree:Landroid/net/Uri;

.field private notificationChannel:Landroid/app/NotificationChannel;

.field private preferences:Landroid/content/SharedPreferences;

.field private serviceNotificationChannel:Landroid/app/NotificationChannel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->preferences:Landroid/content/SharedPreferences;

    .line 73
    iput-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->documentTree:Landroid/net/Uri;

    .line 78
    iput-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->notificationChannel:Landroid/app/NotificationChannel;

    .line 79
    iput-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->serviceNotificationChannel:Landroid/app/NotificationChannel;

    .line 84
    iput-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Lcom/conceptglobal/pmc/smartalerts/Basics;->init()V

    .line 86
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/smartalerts/Basics;->schedulePeriodicIntents()V

    return-void
.end method

.method private buildLocationTrackerServiceIntent(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)Landroid/content/Intent;
    .locals 1

    .line 636
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    const-class v0, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationTrackerService;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 637
    const-string p3, "latitude"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object p2
.end method

.method private checkLocationBasedTracking()V
    .locals 7

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    .line 304
    invoke-direct/range {v0 .. v6}, Lcom/conceptglobal/pmc/smartalerts/Basics;->startLocationTrackerService(DDD)V

    return-void
.end method

.method public static get(Landroid/app/Activity;)Lcom/conceptglobal/pmc/smartalerts/Basics;
    .locals 1

    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/conceptglobal/pmc/smartalerts/Basics;->get(Landroid/app/Application;)Lcom/conceptglobal/pmc/smartalerts/Basics;

    move-result-object p0

    return-object p0

    .line 136
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no activity given"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static get(Landroid/app/Application;)Lcom/conceptglobal/pmc/smartalerts/Basics;
    .locals 3

    .line 141
    instance-of v0, p0, Lcom/conceptglobal/pmc/PMCApplication;

    if-eqz v0, :cond_0

    .line 142
    check-cast p0, Lcom/conceptglobal/pmc/PMCApplication;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/PMCApplication;->getBasics()Lcom/conceptglobal/pmc/smartalerts/Basics;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 144
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no application given"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "application was of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Landroid/content/Context;)Lcom/conceptglobal/pmc/smartalerts/Basics;
    .locals 3

    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/conceptglobal/pmc/PMCApplication;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/conceptglobal/pmc/PMCApplication;

    invoke-static {p0}, Lcom/conceptglobal/pmc/smartalerts/Basics;->get(Landroid/app/Application;)Lcom/conceptglobal/pmc/smartalerts/Basics;

    move-result-object p0

    return-object p0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no context given or of wrong type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 93
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->preferences:Landroid/content/SharedPreferences;

    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no context set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private safeCheckPreferences()V
    .locals 0

    return-void
.end method

.method private startLocationTrackerService(DDD)V
    .locals 1

    const/4 v0, 0x0

    .line 319
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/smartalerts/Basics;->buildLocationTrackerServiceIntent(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)Landroid/content/Intent;

    move-result-object p1

    .line 325
    const-string p2, "try to start location-based tracking service"

    invoke-static {p2}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->saveErrorLog(Ljava/lang/String;)V

    .line 326
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_0

    .line 327
    iget-object p2, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 328
    iget-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    const-string p2, "Foreground Service started.."

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 330
    :cond_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    const-string p3, " Service started.."

    invoke-static {p2, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 331
    iget-object p2, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 334
    :goto_0
    const-string p1, "location-based tracking service started"

    invoke-static {p1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->saveErrorLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 336
    iget-object p2, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    const-string p3, "Foreground Service not started.."

    invoke-static {p2, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 338
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - could not start location-based tracking service"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->saveErrorLog(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public createMessageIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;
    .locals 3

    .line 581
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/smartalerts/locationservice/MessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 582
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 584
    const-string p1, "notificationId"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public createMessagePendingIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/app/PendingIntent;
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/smartalerts/Basics;->createMessageIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    .line 591
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt p2, v1, :cond_0

    const/high16 p2, 0x4000000

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/high16 v1, 0x8000000

    add-int/2addr p2, v1

    .line 590
    invoke-static {v0, v2, p1, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public createNotificationTracking()Landroid/app/Notification;
    .locals 5

    .line 551
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 552
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 553
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    iget-object v1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    .line 556
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    const/high16 v2, 0x4000000

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x8000000

    add-int/2addr v2, v3

    .line 555
    invoke-static {v1, v4, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 560
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    const v4, 0x7f1000c9

    .line 561
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 562
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0801d3

    .line 563
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 564
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 565
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "B is second"

    .line 566
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 567
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/smartalerts/Basics;->getServiceNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 571
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public disableWifiBasedTracking()V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 622
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public enableLocationBasedTracking()V
    .locals 0

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    .line 707
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 708
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getNotificationChannel()Landroid/app/NotificationChannel;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->notificationChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getServiceNotificationChannel()Landroid/app/NotificationChannel;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->serviceNotificationChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 3

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 673
    :catch_0
    const-string v0, "?"

    return-object v0
.end method

.method public hasToRemoveAppFromBatteryOptimization()Z
    .locals 3

    .line 678
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 679
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    .line 680
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/PowerManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDevelopmentVersion()Z
    .locals 2

    .line 664
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/smartalerts/Basics;->getVersionName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 665
    const-string v1, "-SNAPSHOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotificationActive(I)Ljava/lang/Boolean;
    .locals 5

    const/4 v0, 0x0

    .line 519
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    const-string v2, "notification"

    .line 520
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 521
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 522
    invoke-static {v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 523
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 524
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 527
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "could not check for notification"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->saveErrorLog(Ljava/lang/String;)V

    return-object v0
.end method

.method public periodicHook()V
    .locals 0

    .line 220
    invoke-direct {p0}, Lcom/conceptglobal/pmc/smartalerts/Basics;->safeCheckPreferences()V

    .line 222
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/smartalerts/Basics;->safeCheckLocationBasedTracking()V

    .line 224
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/smartalerts/Basics;->safeCheckExternalControls()V

    return-void
.end method

.method public removeAppFromBatteryOptimization()V
    .locals 4

    .line 685
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 686
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    .line 687
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/PowerManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 689
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 690
    iget-object v1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 691
    const-string v1, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    iget-object v1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public removeNotification(I)V
    .locals 2

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    const-string v1, "notification"

    .line 541
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 542
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "could not remove notification {}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->saveErrorLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public safeCheckExternalControls()V
    .locals 0

    .line 260
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/smartalerts/Basics;->safeCheckPersistentNotification()V

    return-void
.end method

.method public safeCheckLocationBasedTracking()V
    .locals 1

    .line 245
    :try_start_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/smartalerts/Basics;->checkLocationBasedTracking()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public safeCheckPersistentNotification()V
    .locals 0

    return-void
.end method

.method public safeCheckWidget()V
    .locals 0

    return-void
.end method

.method public schedulePeriodicIntents()V
    .locals 8

    .line 196
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    .line 197
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    const-class v3, Lcom/conceptglobal/pmc/smartalerts/locationservice/Watchdog;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    iget-object v2, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    .line 200
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    const/high16 v3, 0x4000000

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/high16 v4, 0x10000000

    add-int/2addr v3, v4

    .line 198
    invoke-static {v2, v5, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 204
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xc

    const/4 v3, 0x1

    .line 206
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 209
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public setHomeTimeZone(Ljava/time/ZoneId;)V
    .locals 0

    .line 629
    iget-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 631
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setNotificationChannel(Landroid/app/NotificationChannel;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->notificationChannel:Landroid/app/NotificationChannel;

    return-void
.end method

.method public setServiceNotificationChannel(Landroid/app/NotificationChannel;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->serviceNotificationChannel:Landroid/app/NotificationChannel;

    return-void
.end method

.method public showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/Integer;ZLandroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 10

    move-object v1, p0

    move/from16 v0, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p10

    .line 478
    :try_start_0
    iget-object v4, v1, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    invoke-static {v4}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v4

    .line 481
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_0

    .line 482
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    iget-object v8, v1, Lcom/conceptglobal/pmc/smartalerts/Basics;->notificationChannel:Landroid/app/NotificationChannel;

    invoke-static {v8}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 483
    :cond_0
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v1, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v7, p2

    .line 485
    invoke-virtual {v5, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    move-object v8, p3

    .line 486
    invoke-virtual {v7, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    move-object v8, p4

    .line 487
    invoke-virtual {v7, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    const v8, 0x7f0801ac

    .line 488
    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    move-object v8, p1

    .line 489
    invoke-virtual {v7, p1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    if-eqz v0, :cond_2

    .line 491
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_1

    const-string v8, "reminder"

    goto :goto_1

    :cond_1
    const-string v8, "progress"

    goto :goto_1

    .line 492
    :cond_2
    const-string v8, "event"

    .line 490
    :goto_1
    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    const/4 v8, 0x1

    .line 493
    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 494
    invoke-virtual {v7, v0}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v7, 0x0

    .line 495
    invoke-virtual {v0, v7}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v7, "A is first"

    .line 496
    invoke-virtual {v0, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSortKey(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 497
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_3

    .line 498
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/smartalerts/Basics;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_3
    if-eqz v2, :cond_4

    if-eqz p8, :cond_4

    .line 501
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v6, p9

    invoke-virtual {v5, v0, v6, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_4
    if-eqz v3, :cond_5

    if-eqz p11, :cond_5

    .line 504
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v2, p12

    invoke-virtual {v5, v0, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 506
    :cond_5
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 507
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "could not display/update notification"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->saveErrorLog(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public stopLocationTrackerService()V
    .locals 2

    const/4 v0, 0x0

    .line 347
    :try_start_0
    invoke-direct {p0, v0, v0, v0}, Lcom/conceptglobal/pmc/smartalerts/Basics;->buildLocationTrackerServiceIntent(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)Landroid/content/Intent;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/conceptglobal/pmc/smartalerts/Basics;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 350
    const-string v0, "location-based tracking service stopped"

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->saveErrorLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "could not stop location-based tracking service"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->saveErrorLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public useCurrentLocationAsWorkplace(Landroid/app/Activity;)V
    .locals 10

    .line 365
    const-string v0, "gps"

    const-string v1, "fused"

    const-string v2, "network"

    new-instance v3, Lcom/conceptglobal/pmc/smartalerts/Basics$1;

    invoke-direct {v3, p0, p1}, Lcom/conceptglobal/pmc/smartalerts/Basics$1;-><init>(Lcom/conceptglobal/pmc/smartalerts/Basics;Landroid/app/Activity;)V

    .line 414
    :try_start_0
    const-string v4, "location"

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/location/LocationManager;

    const/4 p1, 0x1

    .line 415
    invoke-virtual {v4, p1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object p1

    .line 416
    const-string v5, "passive"

    .line 417
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v5, v2

    goto :goto_0

    .line 420
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v2, v6, :cond_1

    move-object v5, v1

    goto :goto_0

    .line 424
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object v5, v0

    .line 430
    :cond_2
    :goto_0
    new-instance v9, Lcom/conceptglobal/pmc/smartalerts/Basics$2;

    invoke-direct {v9, p0, v3, v4}, Lcom/conceptglobal/pmc/smartalerts/Basics$2;-><init>(Lcom/conceptglobal/pmc/smartalerts/Basics;Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationCallback;Landroid/location/LocationManager;)V

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 460
    invoke-interface {v3, p1}, Lcom/conceptglobal/pmc/smartalerts/locationservice/LocationCallback;->error(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
