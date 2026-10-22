.class final Lcom/evernote/android/job/WakeLockUtil;
.super Ljava/lang/Object;
.source "WakeLockUtil.java"


# static fields
.field private static final ACTIVE_WAKE_LOCKS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAT:Lcom/evernote/android/job/util/JobCat;

.field private static final EXTRA_WAKE_LOCK_ID:Ljava/lang/String; = "com.evernote.android.job.wakelockid"

.field private static nextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "WakeLockUtil"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/WakeLockUtil;->CAT:Lcom/evernote/android/job/util/JobCat;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/evernote/android/job/WakeLockUtil;->ACTIVE_WAKE_LOCKS:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 84
    sput v0, Lcom/evernote/android/job/WakeLockUtil;->nextId:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquireWakeLock(Landroid/content/Context;Ljava/lang/String;J)Landroid/os/PowerManager$WakeLock;
    .locals 2

    .line 47
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/evernote/android/job/WakeLockUtil;->acquireWakeLock(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;J)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static acquireWakeLock(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;J)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/evernote/android/job/util/JobUtil;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 66
    sget-object p1, Lcom/evernote/android/job/WakeLockUtil;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {p1, p0}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 137
    :cond_0
    const-string v1, "com.evernote.android.job.wakelockid"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 141
    :cond_1
    sget-object v0, Lcom/evernote/android/job/WakeLockUtil;->ACTIVE_WAKE_LOCKS:Landroid/util/SparseArray;

    monitor-enter v0

    .line 142
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    invoke-static {v1}, Lcom/evernote/android/job/WakeLockUtil;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 143
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 144
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 145
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 79
    sget-object v0, Lcom/evernote/android/job/WakeLockUtil;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 6

    const-string v0, "wake:"

    .line 101
    sget-object v1, Lcom/evernote/android/job/WakeLockUtil;->ACTIVE_WAKE_LOCKS:Landroid/util/SparseArray;

    monitor-enter v1

    .line 102
    :try_start_0
    sget v2, Lcom/evernote/android/job/WakeLockUtil;->nextId:I

    add-int/lit8 v3, v2, 0x1

    .line 103
    sput v3, Lcom/evernote/android/job/WakeLockUtil;->nextId:I

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    .line 105
    sput v3, Lcom/evernote/android/job/WakeLockUtil;->nextId:I

    .line 108
    :cond_0
    const-string v3, "com.evernote.android.job.wakelockid"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_1

    .line 111
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {p0, v0, v3, v4}, Lcom/evernote/android/job/WakeLockUtil;->acquireWakeLock(Landroid/content/Context;Ljava/lang/String;J)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 117
    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    :cond_2
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p0

    .line 121
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
