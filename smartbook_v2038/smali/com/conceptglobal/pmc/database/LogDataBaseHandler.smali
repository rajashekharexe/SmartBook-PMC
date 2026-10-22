.class public Lcom/conceptglobal/pmc/database/LogDataBaseHandler;
.super Ljava/lang/Object;
.source "LogDataBaseHandler.java"


# static fields
.field public static datapath:Ljava/lang/String;

.field public static volatile instance:Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

.field private static mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sDataBaseHandler:Lcom/conceptglobal/pmc/database/LogDataBaseHandler;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getDatabasePathLOG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->datapath:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->instance:Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/conceptglobal/pmc/database/LogDataBaseHandler;
    .locals 2

    const-class v0, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->sDataBaseHandler:Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;-><init>()V

    sput-object v1, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->sDataBaseHandler:Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    .line 40
    :cond_0
    sget-object v1, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->sDataBaseHandler:Lcom/conceptglobal/pmc/database/LogDataBaseHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static reset()V
    .locals 2

    .line 32
    new-instance v0, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->instance:Lcom/conceptglobal/pmc/database/LogDataBaseHandler;

    .line 33
    sget-object v0, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method


# virtual methods
.method public checkDataBase()Z
    .locals 3

    const/4 v0, 0x0

    .line 68
    :try_start_0
    sget-object v1, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->datapath:Ljava/lang/String;

    const/16 v2, 0x11

    invoke-static {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 75
    throw v0

    :catch_0
    move-exception v1

    .line 70
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public declared-synchronized closeDatabase()V
    .locals 1

    monitor-enter p0

    .line 58
    :try_start_0
    sget-object v0, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
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

    .line 44
    :try_start_0
    sget-object v0, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->datapath:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->datapath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    sget-object v0, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->datapath:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    sget-object v0, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->datapath:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/database/LogDataBaseHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
