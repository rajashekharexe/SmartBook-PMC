.class public Lcom/conceptglobal/pmc/PMCApplication;
.super Landroid/app/Application;
.source "PMCApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/PMCApplication$TrackerName;
    }
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "Fcm Test"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "Fcm Test"

.field private static final PROPERTY_ID:Ljava/lang/String; = "UA-83907571-3"

.field public static final WeatherApiKEY:Ljava/lang/String; = "6125571beb5e3ff4af5889504fbfa254"

.field private static activityVisible:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field private basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

.field public downloadFileIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public farmersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private isHomeFragmentActive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/PMCApplication;->farmersList:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/PMCApplication;->downloadFileIDs:Ljava/util/ArrayList;

    return-void
.end method

.method public static activityPaused()V
    .locals 1

    const/4 v0, 0x0

    .line 173
    sput-boolean v0, Lcom/conceptglobal/pmc/PMCApplication;->activityVisible:Z

    return-void
.end method

.method public static activityResumed()V
    .locals 1

    const/4 v0, 0x1

    .line 169
    sput-boolean v0, Lcom/conceptglobal/pmc/PMCApplication;->activityVisible:Z

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 143
    sget-object v0, Lcom/conceptglobal/pmc/PMCApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static isActivityVisible()Z
    .locals 1

    .line 165
    sget-boolean v0, Lcom/conceptglobal/pmc/PMCApplication;->activityVisible:Z

    return v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 139
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public getBasics()Lcom/conceptglobal/pmc/smartalerts/Basics;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/conceptglobal/pmc/PMCApplication;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 3

    .line 146
    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 150
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isHomeFragmentActive()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/PMCApplication;->isHomeFragmentActive:Z

    return v0
.end method

.method public onCreate()V
    .locals 5

    .line 99
    const-string v0, "Fcm Test"

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 100
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/PMCApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/conceptglobal/pmc/PMCApplication;->mContext:Landroid/content/Context;

    .line 101
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 102
    invoke-static {p0, v1, v2, v3}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->init(Landroid/content/Context;IILcom/conceptglobal/imaterialdesign/app/ThemeManager$EventDispatcher;)V

    .line 105
    :try_start_0
    invoke-static {p0}, Lcom/evernote/android/job/JobManager;->create(Landroid/content/Context;)Lcom/evernote/android/job/JobManager;

    move-result-object v2

    new-instance v4, Lcom/conceptglobal/pmc/PMCJobCreator;

    invoke-direct {v4}, Lcom/conceptglobal/pmc/PMCJobCreator;-><init>()V

    invoke-virtual {v2, v4}, Lcom/evernote/android/job/JobManager;->addJobCreator(Lcom/evernote/android/job/JobCreator;)V

    .line 106
    new-instance v2, Lcom/conceptglobal/pmc/smartalerts/Basics;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/smartalerts/Basics;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/conceptglobal/pmc/PMCApplication;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    .line 109
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_0

    .line 110
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/PMCApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 115
    invoke-static {}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m()V

    const/4 v3, 0x4

    invoke-static {v0, v0, v3}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v3

    .line 117
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 118
    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 123
    invoke-static {}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m()V

    invoke-static {v0, v0, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 124
    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 125
    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/PMCApplication;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/smartalerts/Basics;->setNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 129
    iget-object v0, p0, Lcom/conceptglobal/pmc/PMCApplication;->basics:Lcom/conceptglobal/pmc/smartalerts/Basics;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/smartalerts/Basics;->setServiceNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_0
    .catch Lcom/evernote/android/job/JobManagerCreateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :catch_0
    :catchall_0
    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/FileUtils;->createApplicationFolder()V

    return-void
.end method

.method public setIsHomeFragmentActive(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/PMCApplication;->isHomeFragmentActive:Z

    return-void
.end method
