.class final Lcom/evernote/android/job/GcmAvailableHelper;
.super Ljava/lang/Object;
.source "GcmAvailableHelper.java"


# static fields
.field private static final ACTION_TASK_READY:Ljava/lang/String; = "com.google.android.gms.gcm.ACTION_TASK_READY"

.field private static final CAT:Lcom/evernote/android/job/util/JobCat;

.field private static final GCM_IN_CLASSPATH:Z

.field private static final GCM_PERMISSION:Ljava/lang/String; = "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE"

.field private static checkedServiceEnabled:Z

.field private static gcmServiceAvailable:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "GcmAvailableHelper"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/GcmAvailableHelper;->CAT:Lcom/evernote/android/job/util/JobCat;

    const/4 v0, -0x1

    .line 44
    sput v0, Lcom/evernote/android/job/GcmAvailableHelper;->gcmServiceAvailable:I

    .line 50
    :try_start_0
    const-string v0, "com.google.android.gms.gcm.GcmNetworkManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    sput-boolean v0, Lcom/evernote/android/job/GcmAvailableHelper;->GCM_IN_CLASSPATH:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasPermission(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 106
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 110
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v3, "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v1, v1, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isGcmApiSupported(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 60
    :try_start_0
    sget-boolean v1, Lcom/evernote/android/job/GcmAvailableHelper;->checkedServiceEnabled:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 61
    sput-boolean v2, Lcom/evernote/android/job/GcmAvailableHelper;->checkedServiceEnabled:Z

    .line 62
    sget-boolean v1, Lcom/evernote/android/job/GcmAvailableHelper;->GCM_IN_CLASSPATH:Z

    invoke-static {p0, v1}, Lcom/evernote/android/job/GcmAvailableHelper;->setServiceEnabled(Landroid/content/Context;Z)V

    .line 65
    :cond_0
    sget-boolean v1, Lcom/evernote/android/job/GcmAvailableHelper;->GCM_IN_CLASSPATH:Z

    if-eqz v1, :cond_1

    .line 66
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1

    .line 67
    invoke-static {p0}, Lcom/evernote/android/job/GcmAvailableHelper;->isGcmServiceRegistered(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :catchall_0
    :cond_1
    return v0
.end method

.method private static isGcmServiceRegistered(Landroid/content/Context;)I
    .locals 5

    .line 79
    sget v0, Lcom/evernote/android/job/GcmAvailableHelper;->gcmServiceAvailable:I

    if-gez v0, :cond_3

    .line 80
    const-class v0, Lcom/evernote/android/job/JobApi;

    monitor-enter v0

    .line 81
    :try_start_0
    sget v1, Lcom/evernote/android/job/GcmAvailableHelper;->gcmServiceAvailable:I

    if-gez v1, :cond_2

    .line 82
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/evernote/android/job/gcm/PlatformGcmService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 84
    invoke-static {v1}, Lcom/evernote/android/job/GcmAvailableHelper;->hasPermission(Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 85
    sput v2, Lcom/evernote/android/job/GcmAvailableHelper;->gcmServiceAvailable:I

    .line 86
    monitor-exit v0

    return v2

    .line 89
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 92
    invoke-static {p0}, Lcom/evernote/android/job/GcmAvailableHelper;->hasPermission(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 93
    sput v2, Lcom/evernote/android/job/GcmAvailableHelper;->gcmServiceAvailable:I

    .line 94
    monitor-exit v0

    return v2

    .line 97
    :cond_1
    sput v3, Lcom/evernote/android/job/GcmAvailableHelper;->gcmServiceAvailable:I

    .line 99
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 102
    :cond_3
    :goto_0
    sget p0, Lcom/evernote/android/job/GcmAvailableHelper;->gcmServiceAvailable:I

    return p0
.end method

.method private static setServiceEnabled(Landroid/content/Context;Z)V
    .locals 4

    .line 119
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/evernote/android/job/gcm/JobProxyGcm;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".PlatformGcmService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    const/4 v3, 0x2

    if-eq p0, v1, :cond_0

    if-eq p0, v3, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    .line 129
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 130
    sget-object p0, Lcom/evernote/android/job/GcmAvailableHelper;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string p1, "GCM service disabled"

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/util/JobCat;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 137
    invoke-virtual {v0, v2, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 138
    sget-object p0, Lcom/evernote/android/job/GcmAvailableHelper;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string p1, "GCM service enabled"

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/util/JobCat;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method
