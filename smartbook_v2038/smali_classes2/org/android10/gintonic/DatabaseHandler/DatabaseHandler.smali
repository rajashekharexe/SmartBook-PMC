.class public Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;
.super Ljava/lang/Object;
.source "DatabaseHandler.java"


# static fields
.field public static final DATABASE_FOLDER:Ljava/lang/String;

.field public static final DATABASE_NAME:Ljava/lang/String; = "aop.sqlite"

.field public static final DATABASE_PATH:Ljava/lang/String;

.field public static final ROOT_DIR:Ljava/lang/String; = "PMC"

.field public static volatile instance:Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;

.field private static mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sDataBaseHandler:Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PMC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DatabaseDebug"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->DATABASE_FOLDER:Ljava/lang/String;

    const/4 v1, 0x0

    .line 26
    sput-object v1, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->instance:Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;

    .line 30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v1, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/android10/gintonic/ILoggerApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/android10/gintonic/DatabaseHandler/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "aop.sqlite"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->DATABASE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndCreateDBFile()V
    .locals 4

    .line 83
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/android10/gintonic/ILoggerApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/android10/gintonic/DatabaseHandler/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->DATABASE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->DATABASE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    const-string v1, "db status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 95
    throw v0

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;
    .locals 2

    const-class v0, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;

    monitor-enter v0

    .line 37
    :try_start_0
    invoke-static {}, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->checkAndCreateDBFile()V

    .line 39
    sget-object v1, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->sDataBaseHandler:Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;

    invoke-direct {v1}, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;-><init>()V

    sput-object v1, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->sDataBaseHandler:Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;

    .line 42
    :cond_0
    sget-object v1, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->sDataBaseHandler:Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public checkAndCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 71
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS Logger (Id INTEGER PRIMARY KEY  NOT NULL ,ClassName VARCHAR,MethodName VARCHAR,Params TEXT,LogTime DATETIME, MethodResult TEXT, ServerUpdatedStatus INTEGER DEFAULT 0, ExecutionTime TEXT DEFAULT 0,PdaId INTEGER)"

    .line 72
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    const-string v0, "CREATE TABLE IF NOT EXISTS LogStatus (Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,PdaId TEXT,Status TEXT)"

    .line 75
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public declared-synchronized closeDatabase()V
    .locals 1

    monitor-enter p0

    .line 60
    :try_start_0
    sget-object v0, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    monitor-enter p0

    .line 46
    :try_start_0
    sget-object v0, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 47
    iget-object v0, p0, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/io/File;

    sget-object v3, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->DATABASE_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-static {v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    sget-object v0, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->DATABASE_PATH:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 55
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0}, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->checkAndCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 56
    iget-object v0, p0, Lorg/android10/gintonic/DatabaseHandler/DatabaseHandler;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
