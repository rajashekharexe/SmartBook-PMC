.class Lcom/evernote/android/job/JobStorage;
.super Ljava/lang/Object;
.source "JobStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/android/job/JobStorage$JobOpenHelper;,
        Lcom/evernote/android/job/JobStorage$JobCacheId;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x1e

.field private static final CAT:Lcom/evernote/android/job/util/JobCat;

.field public static final COLUMN_BACKOFF_MS:Ljava/lang/String; = "backoffMs"

.field public static final COLUMN_BACKOFF_POLICY:Ljava/lang/String; = "backoffPolicy"

.field public static final COLUMN_END_MS:Ljava/lang/String; = "endMs"

.field public static final COLUMN_EXACT:Ljava/lang/String; = "exact"

.field public static final COLUMN_EXTRAS:Ljava/lang/String; = "extras"

.field public static final COLUMN_FLEX_MS:Ljava/lang/String; = "flexMs"

.field public static final COLUMN_FLEX_SUPPORT:Ljava/lang/String; = "flexSupport"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_INTERVAL_MS:Ljava/lang/String; = "intervalMs"

.field public static final COLUMN_LAST_RUN:Ljava/lang/String; = "lastRun"

.field public static final COLUMN_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final COLUMN_NUM_FAILURES:Ljava/lang/String; = "numFailures"

.field private static final COLUMN_PERSISTED:Ljava/lang/String; = "persisted"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLUMN_REQUIREMENTS_ENFORCED:Ljava/lang/String; = "requirementsEnforced"

.field public static final COLUMN_REQUIRES_BATTERY_NOT_LOW:Ljava/lang/String; = "requiresBatteryNotLow"

.field public static final COLUMN_REQUIRES_CHARGING:Ljava/lang/String; = "requiresCharging"

.field public static final COLUMN_REQUIRES_DEVICE_IDLE:Ljava/lang/String; = "requiresDeviceIdle"

.field public static final COLUMN_REQUIRES_STORAGE_NOT_LOW:Ljava/lang/String; = "requiresStorageNotLow"

.field public static final COLUMN_SCHEDULED_AT:Ljava/lang/String; = "scheduledAt"

.field public static final COLUMN_STARTED:Ljava/lang/String; = "started"

.field public static final COLUMN_START_MS:Ljava/lang/String; = "startMs"

.field public static final COLUMN_TAG:Ljava/lang/String; = "tag"

.field public static final COLUMN_TRANSIENT:Ljava/lang/String; = "transient"

.field private static final COLUMN_TRANSIENT_OLD:Ljava/lang/String; = "isTransient"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATABASE_NAME:Ljava/lang/String; = "evernote_jobs.db"

.field public static final DATABASE_VERSION:I = 0x6

.field private static final FAILED_DELETE_IDS:Ljava/lang/String; = "FAILED_DELETE_IDS"

.field public static final JOB_ID_COUNTER:Ljava/lang/String; = "JOB_ID_COUNTER_v2"

.field public static final JOB_TABLE_NAME:Ljava/lang/String; = "jobs"

.field public static final PREF_FILE_NAME:Ljava/lang/String; = "evernote_jobs"

.field private static final WHERE_NOT_STARTED:Ljava/lang/String; = "ifnull(started, 0)<=0"


# instance fields
.field private final mCacheId:Lcom/evernote/android/job/JobStorage$JobCacheId;

.field private final mDbHelper:Lcom/evernote/android/job/JobStorage$JobOpenHelper;

.field private final mFailedDeleteIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInjectedDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mJobCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "JobStorage"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/JobStorage;->CAT:Lcom/evernote/android/job/util/JobCat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 109
    const-string v0, "evernote_jobs.db"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/JobStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string v0, "evernote_jobs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/JobStorage;->mPreferences:Landroid/content/SharedPreferences;

    .line 114
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lcom/evernote/android/job/JobStorage;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 116
    new-instance v1, Lcom/evernote/android/job/JobStorage$JobCacheId;

    invoke-direct {v1, p0}, Lcom/evernote/android/job/JobStorage$JobCacheId;-><init>(Lcom/evernote/android/job/JobStorage;)V

    iput-object v1, p0, Lcom/evernote/android/job/JobStorage;->mCacheId:Lcom/evernote/android/job/JobStorage$JobCacheId;

    .line 118
    new-instance v1, Lcom/evernote/android/job/JobStorage$JobOpenHelper;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/evernote/android/job/JobStorage$JobOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/evernote/android/job/JobStorage$1;)V

    iput-object v1, p0, Lcom/evernote/android/job/JobStorage;->mDbHelper:Lcom/evernote/android/job/JobStorage$JobOpenHelper;

    .line 120
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const-string p2, "FAILED_DELETE_IDS"

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/evernote/android/job/JobStorage;->mFailedDeleteIds:Ljava/util/Set;

    .line 121
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/evernote/android/job/JobStorage;->tryToCleanupFinishedJobs()V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/evernote/android/job/JobStorage;)Ljava/util/Set;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/evernote/android/job/JobStorage;->mFailedDeleteIds:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lcom/evernote/android/job/JobStorage;Lcom/evernote/android/job/JobRequest;I)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300()Lcom/evernote/android/job/util/JobCat;
    .locals 1

    .line 47
    sget-object v0, Lcom/evernote/android/job/JobStorage;->CAT:Lcom/evernote/android/job/util/JobCat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/evernote/android/job/JobStorage;IZ)Lcom/evernote/android/job/JobRequest;
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/evernote/android/job/JobStorage;->load(IZ)Lcom/evernote/android/job/JobRequest;

    move-result-object p0

    return-object p0
.end method

.method private addFailedDeleteId(I)V
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mFailedDeleteIds:Ljava/util/Set;

    monitor-enter v0

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/evernote/android/job/JobStorage;->mFailedDeleteIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object p1, p0, Lcom/evernote/android/job/JobStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "FAILED_DELETE_IDS"

    iget-object v2, p0, Lcom/evernote/android/job/JobStorage;->mFailedDeleteIds:Ljava/util/Set;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 371
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static closeCursor(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 598
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 606
    invoke-static {}, Lcom/evernote/android/job/JobConfig;->isCloseDatabase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private didFailToDelete(I)Z
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mFailedDeleteIds:Ljava/util/Set;

    monitor-enter v0

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/evernote/android/job/JobStorage;->mFailedDeleteIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/evernote/android/job/JobStorage;->mFailedDeleteIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 377
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private load(IZ)Lcom/evernote/android/job/JobRequest;
    .locals 11

    .line 285
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage;->didFailToDelete(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 292
    :cond_0
    :try_start_0
    const-string v0, "_id=?"

    if-nez p2, :cond_1

    .line 294
    const-string v0, "_id=? AND started<=0"

    :cond_1
    move-object v5, v0

    .line 297
    invoke-virtual {p0}, Lcom/evernote/android/job/JobStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 298
    :try_start_1
    const-string v3, "jobs"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    .line 299
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest;->fromCursor(Landroid/database/Cursor;)Lcom/evernote/android/job/JobRequest;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    invoke-static {v0}, Lcom/evernote/android/job/JobStorage;->closeCursor(Landroid/database/Cursor;)V

    .line 308
    invoke-static {p2}, Lcom/evernote/android/job/JobStorage;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v10, v0

    move-object v0, p2

    move-object p2, v2

    move-object v2, v10

    goto :goto_0

    .line 307
    :cond_2
    invoke-static {v0}, Lcom/evernote/android/job/JobStorage;->closeCursor(Landroid/database/Cursor;)V

    .line 308
    invoke-static {p2}, Lcom/evernote/android/job/JobStorage;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v10, v0

    move-object v0, p2

    move-object p2, v10

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object p2, v1

    goto :goto_2

    :catch_2
    move-exception p2

    move-object v0, v1

    move-object v2, v0

    .line 304
    :goto_0
    :try_start_3
    sget-object v3, Lcom/evernote/android/job/JobStorage;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string v4, "could not load id %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, p2, v4, v5}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 307
    invoke-static {v2}, Lcom/evernote/android/job/JobStorage;->closeCursor(Landroid/database/Cursor;)V

    .line 308
    invoke-static {v0}, Lcom/evernote/android/job/JobStorage;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    return-object v1

    :catchall_3
    move-exception p1

    move-object p2, v0

    move-object v1, v2

    .line 307
    :goto_2
    invoke-static {v1}, Lcom/evernote/android/job/JobStorage;->closeCursor(Landroid/database/Cursor;)V

    .line 308
    invoke-static {p2}, Lcom/evernote/android/job/JobStorage;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method private remove(Lcom/evernote/android/job/JobRequest;I)Z
    .locals 8

    .line 225
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/evernote/android/job/JobStorage;->mCacheId:Lcom/evernote/android/job/JobStorage$JobCacheId;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/evernote/android/job/JobStorage$JobCacheId;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-virtual {p0}, Lcom/evernote/android/job/JobStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 231
    const-string v2, "jobs"

    const-string v3, "_id=?"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-static {v1}, Lcom/evernote/android/job/JobStorage;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 239
    iget-object p1, p0, Lcom/evernote/android/job/JobStorage;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 234
    :try_start_1
    sget-object v3, Lcom/evernote/android/job/JobStorage;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string v4, "could not delete %d %s"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    aput-object p1, v6, v0

    invoke-virtual {v3, v2, v4, v6}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-direct {p0, p2}, Lcom/evernote/android/job/JobStorage;->addFailedDeleteId(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    invoke-static {v1}, Lcom/evernote/android/job/JobStorage;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 239
    iget-object p1, p0, Lcom/evernote/android/job/JobStorage;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v7

    .line 238
    :goto_0
    invoke-static {v1}, Lcom/evernote/android/job/JobStorage;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 239
    iget-object p2, p0, Lcom/evernote/android/job/JobStorage;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private store(Lcom/evernote/android/job/JobRequest;)V
    .locals 6

    .line 266
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->toContentValues()Landroid/content/ContentValues;

    move-result-object p1

    const/4 v0, 0x0

    .line 269
    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/JobStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 275
    :try_start_1
    const-string v2, "jobs"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_0

    .line 279
    invoke-static {v1}, Lcom/evernote/android/job/JobStorage;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    .line 276
    :cond_0
    :try_start_2
    new-instance p1, Landroid/database/SQLException;

    const-string v0, "Couldn\'t insert job request into database"

    invoke-direct {p1, v0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 279
    :goto_0
    invoke-static {v0}, Lcom/evernote/android/job/JobStorage;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method private tryToCleanupFinishedJobs()V
    .locals 2

    .line 381
    new-instance v0, Lcom/evernote/android/job/JobStorage$1;

    const-string v1, "CleanupFinishedJobsThread"

    invoke-direct {v0, p0, v1}, Lcom/evernote/android/job/JobStorage$1;-><init>(Lcom/evernote/android/job/JobStorage;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0}, Lcom/evernote/android/job/JobStorage$1;->start()V

    return-void
.end method

.method private updateRequestInCache(Lcom/evernote/android/job/JobRequest;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mCacheId:Lcom/evernote/android/job/JobStorage$JobCacheId;

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/evernote/android/job/JobStorage$JobCacheId;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/evernote/android/job/JobRequest;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mCacheId:Lcom/evernote/android/job/JobStorage$JobCacheId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobStorage$JobCacheId;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/android/job/JobRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public getAllJobRequests(Ljava/lang/String;Z)Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set<",
            "Lcom/evernote/android/job/JobRequest;",
            ">;"
        }
    .end annotation

    const-string v0, "tag=?"

    .line 171
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 176
    iget-object v2, p0, Lcom/evernote/android/job/JobStorage;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v2, 0x0

    .line 181
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    move-object p1, v2

    goto :goto_0

    .line 182
    :cond_0
    const-string p1, "ifnull(started, 0)<=0"

    :goto_0
    move-object v6, p1

    move-object v7, v2

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 185
    const-string p2, ""

    goto :goto_1

    :cond_2
    const-string p2, "ifnull(started, 0)<=0 AND "

    .line 186
    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 187
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    move-object v6, p2

    .line 190
    :goto_2
    invoke-virtual {p0}, Lcom/evernote/android/job/JobStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    :try_start_1
    const-string v4, "jobs"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 194
    new-instance p2, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mCacheId:Lcom/evernote/android/job/JobStorage$JobCacheId;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobStorage$JobCacheId;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :cond_3
    :goto_3
    if-eqz v2, :cond_5

    .line 196
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 199
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/evernote/android/job/JobStorage;->didFailToDelete(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 200
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 203
    :cond_4
    invoke-static {v2}, Lcom/evernote/android/job/JobRequest;->fromCursor(Landroid/database/Cursor;)Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 211
    :cond_5
    invoke-static {v2}, Lcom/evernote/android/job/JobStorage;->closeCursor(Landroid/database/Cursor;)V

    .line 212
    invoke-static {p1}, Lcom/evernote/android/job/JobStorage;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_5

    :catchall_0
    move-exception p2

    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    goto :goto_6

    :catch_0
    move-exception p2

    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object p2, v2

    goto :goto_6

    :catch_1
    move-exception p1

    move-object p2, v2

    .line 208
    :goto_4
    :try_start_2
    sget-object v0, Lcom/evernote/android/job/JobStorage;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string v3, "could not load all jobs"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3, v4}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 211
    invoke-static {v2}, Lcom/evernote/android/job/JobStorage;->closeCursor(Landroid/database/Cursor;)V

    .line 212
    invoke-static {p2}, Lcom/evernote/android/job/JobStorage;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 213
    :goto_5
    iget-object p1, p0, Lcom/evernote/android/job/JobStorage;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_2
    move-exception p1

    .line 211
    :goto_6
    invoke-static {v2}, Lcom/evernote/android/job/JobStorage;->closeCursor(Landroid/database/Cursor;)V

    .line 212
    invoke-static {p2}, Lcom/evernote/android/job/JobStorage;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 213
    iget-object p2, p0, Lcom/evernote/android/job/JobStorage;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mInjectedDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    return-object v0

    .line 321
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mDbHelper:Lcom/evernote/android/job/JobStorage$JobOpenHelper;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobStorage$JobOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 324
    sget-object v1, Lcom/evernote/android/job/JobStorage;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v1, v0}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V

    .line 327
    new-instance v0, Lcom/evernote/android/job/JobStorageDatabaseErrorHandler;

    invoke-direct {v0}, Lcom/evernote/android/job/JobStorageDatabaseErrorHandler;-><init>()V

    const-string v1, "evernote_jobs.db"

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/JobStorageDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mDbHelper:Lcom/evernote/android/job/JobStorage$JobOpenHelper;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobStorage$JobOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method getFailedDeleteIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mFailedDeleteIds:Ljava/util/Set;

    return-object v0
.end method

.method getMaxJobId()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 351
    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/JobStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 352
    :try_start_1
    const-string v3, "SELECT MAX(_id) FROM jobs"

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 360
    :goto_0
    invoke-static {v0}, Lcom/evernote/android/job/JobStorage;->closeCursor(Landroid/database/Cursor;)V

    .line 361
    invoke-static {v2}, Lcom/evernote/android/job/JobStorage;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v2, v0

    .line 357
    :goto_1
    :try_start_2
    sget-object v4, Lcom/evernote/android/job/JobStorage;->CAT:Lcom/evernote/android/job/util/JobCat;

    invoke-virtual {v4, v3}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    invoke-static {v0}, Lcom/evernote/android/job/JobStorage;->closeCursor(Landroid/database/Cursor;)V

    .line 361
    invoke-static {v2}, Lcom/evernote/android/job/JobStorage;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v3, 0x0

    .line 364
    :goto_2
    invoke-static {}, Lcom/evernote/android/job/JobConfig;->getJobIdOffset()I

    move-result v0

    iget-object v2, p0, Lcom/evernote/android/job/JobStorage;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "JOB_ID_COUNTER_v2"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 360
    :goto_3
    invoke-static {v0}, Lcom/evernote/android/job/JobStorage;->closeCursor(Landroid/database/Cursor;)V

    .line 361
    invoke-static {v2}, Lcom/evernote/android/job/JobStorage;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method injectDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/evernote/android/job/JobStorage;->mInjectedDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public declared-synchronized nextJobId()I
    .locals 3

    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mJobCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lcom/evernote/android/job/JobStorage;->getMaxJobId()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/evernote/android/job/JobStorage;->mJobCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mJobCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 250
    invoke-static {}, Lcom/evernote/android/job/JobConfig;->getJobIdOffset()I

    move-result v1

    if-lt v0, v1, :cond_1

    const v2, 0x7ffff1c0

    if-lt v0, v2, :cond_2

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mJobCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 257
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mJobCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/evernote/android/job/JobStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "JOB_ID_COUNTER_v2"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public put(Lcom/evernote/android/job/JobRequest;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 130
    :try_start_0
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage;->store(Lcom/evernote/android/job/JobRequest;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage;->updateRequestInCache(Lcom/evernote/android/job/JobRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-object p1, p0, Lcom/evernote/android/job/JobStorage;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public remove(Lcom/evernote/android/job/JobRequest;)V
    .locals 1

    .line 220
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;I)Z

    return-void
.end method

.method public update(Lcom/evernote/android/job/JobRequest;Landroid/content/ContentValues;)V
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 144
    :try_start_0
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage;->updateRequestInCache(Lcom/evernote/android/job/JobRequest;)V

    .line 145
    invoke-virtual {p0}, Lcom/evernote/android/job/JobStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 146
    const-string v1, "jobs"

    const-string v2, "_id=?"

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 149
    :try_start_1
    sget-object v1, Lcom/evernote/android/job/JobStorage;->CAT:Lcom/evernote/android/job/util/JobCat;

    const-string v2, "could not update %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, p2, v2, v3}, Lcom/evernote/android/job/util/JobCat;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :goto_0
    invoke-static {v0}, Lcom/evernote/android/job/JobStorage;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 152
    iget-object p1, p0, Lcom/evernote/android/job/JobStorage;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 151
    :goto_1
    invoke-static {v0}, Lcom/evernote/android/job/JobStorage;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 152
    iget-object p2, p0, Lcom/evernote/android/job/JobStorage;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
