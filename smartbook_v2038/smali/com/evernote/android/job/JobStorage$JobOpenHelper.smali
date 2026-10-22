.class final Lcom/evernote/android/job/JobStorage$JobOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "JobStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/JobStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JobOpenHelper"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 441
    new-instance v5, Lcom/evernote/android/job/JobStorageDatabaseErrorHandler;

    invoke-direct {v5}, Lcom/evernote/android/job/JobStorageDatabaseErrorHandler;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/evernote/android/job/JobStorage$1;)V
    .locals 0

    .line 438
    invoke-direct {p0, p1, p2}, Lcom/evernote/android/job/JobStorage$JobOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private createJobTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 480
    const-string v0, "create table jobs (_id integer primary key, tag text not null, startMs integer, endMs integer, backoffMs integer, backoffPolicy text not null, intervalMs integer, requirementsEnforced integer, requiresCharging integer, requiresDeviceIdle integer, exact integer, networkType text not null, extras text, numFailures integer, scheduledAt integer, started integer, flexMs integer, flexSupport integer, lastRun integer, transient integer, requiresBatteryNotLow integer, requiresStorageNotLow integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private upgradeFrom1To2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 507
    const-string v0, "alter table jobs add column isTransient integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private upgradeFrom2To3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 511
    const-string v0, "alter table jobs add column flexMs integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 512
    const-string v0, "alter table jobs add column flexSupport integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 515
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 516
    sget-wide v1, Lcom/evernote/android/job/JobRequest;->MIN_INTERVAL:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "intervalMs"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "intervalMs>0 AND intervalMs<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/evernote/android/job/JobRequest;->MIN_INTERVAL:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "jobs"

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 520
    const-string v0, "update jobs set flexMs = intervalMs;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private upgradeFrom3To4(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 524
    const-string v0, "alter table jobs add column lastRun integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private upgradeFrom4To5(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 531
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 535
    const-string v0, "create table jobs_new (_id integer primary key, tag text not null, startMs integer, endMs integer, backoffMs integer, backoffPolicy text not null, intervalMs integer, requirementsEnforced integer, requiresCharging integer, requiresDeviceIdle integer, exact integer, networkType text not null, extras text, numFailures integer, scheduledAt integer, started integer, flexMs integer, flexSupport integer, lastRun integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 556
    const-string v0, "INSERT INTO jobs_new SELECT _id,tag,startMs,endMs,backoffMs,backoffPolicy,intervalMs,requirementsEnforced,requiresCharging,requiresDeviceIdle,exact,networkType,extras,numFailures,scheduledAt,isTransient,flexMs,flexSupport,lastRun FROM jobs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 577
    const-string v0, "DROP TABLE jobs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 578
    const-string v0, "ALTER TABLE jobs_new RENAME TO jobs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 580
    const-string v0, "alter table jobs add column transient integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private upgradeFrom5To6(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 589
    const-string v0, "alter table jobs add column requiresBatteryNotLow integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 590
    const-string v0, "alter table jobs add column requiresStorageNotLow integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 446
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage$JobOpenHelper;->createJobTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 470
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage$JobOpenHelper;->upgradeFrom5To6(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 474
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 466
    :cond_1
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage$JobOpenHelper;->upgradeFrom4To5(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 462
    :cond_2
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage$JobOpenHelper;->upgradeFrom3To4(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 458
    :cond_3
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage$JobOpenHelper;->upgradeFrom2To3(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 454
    :cond_4
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage$JobOpenHelper;->upgradeFrom1To2(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
