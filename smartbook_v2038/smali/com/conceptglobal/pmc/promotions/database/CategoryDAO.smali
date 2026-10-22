.class public Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
.super Ljava/lang/Object;
.source "CategoryDAO.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CategoryDAO"


# instance fields
.field private UsageId:I

.field cont:Landroid/content/Context;

.field contentId:I

.field public dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

.field ft:Ljava/text/SimpleDateFormat;

.field sqLite:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:MM:SS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->ft:Ljava/text/SimpleDateFormat;

    .line 42
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->cont:Landroid/content/Context;

    .line 48
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    return-void
.end method


# virtual methods
.method public InsertDownloadDetails(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 772
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 773
    const-string v1, "DownloadID"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string p1, "FilePath"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string p1, "ContentID"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 776
    const-string p1, "Type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 778
    const-string p2, "DownLoadFileDetails"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 780
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 782
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 783
    throw p1
.end method

.method public executeQuery(Ljava/lang/String;)V
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 728
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 730
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 732
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 733
    throw p1
.end method

.method public declared-synchronized execute_RawQuery_inDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 840
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 846
    :try_start_1
    const-string p2, "error"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 844
    const-string p2, "error"

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p1

    .line 842
    const-string p2, "error"

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDiskIOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 849
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public getAllDownloadsContents(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 373
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 376
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    .line 378
    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_8

    .line 379
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 381
    :cond_0
    new-instance v5, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-direct {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;-><init>()V

    .line 382
    const-string v6, "ContentId"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentId(I)V

    .line 383
    const-string v6, "ContentName"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentName(Ljava/lang/String;)V

    .line 384
    const-string v6, "ContentData"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentData(Ljava/lang/String;)V

    .line 385
    const-string v6, "Description"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setDescription(Ljava/lang/String;)V

    .line 386
    const-string v6, "ContentDeviceLocation"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentDeviceLocation(Ljava/lang/String;)V

    .line 387
    const-string v6, "ContentServerLocation"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentServerLocation(Ljava/lang/String;)V

    .line 388
    const-string v6, "ContentType"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentType(I)V

    .line 389
    const-string v6, "LanguageId"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setLanguageId(I)V

    .line 390
    const-string v6, "ThumbNail"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setThumbNail(Ljava/lang/String;)V

    .line 391
    const-string v6, "IsDeleted"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsDeleted(I)V

    .line 392
    const-string v6, "IsSharable"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsSharable(Ljava/lang/String;)V

    .line 393
    const-string v6, "IsBanner"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsBanner(Ljava/lang/String;)V

    .line 394
    const-string v6, "IsDownloadable"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsDownloadable(Ljava/lang/String;)V

    .line 395
    const-string v6, "SearchKeys"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setSearchKeys(Ljava/lang/String;)V

    .line 396
    const-string v6, "LocalThumbnail"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setLocalThumbnail(Ljava/lang/String;)V

    .line 397
    const-string v6, "CreatedDate"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setCreatedDate(Ljava/lang/String;)V

    .line 400
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select cm.CategoryId,cm.CategoryName,cm.ParentCategoryID from CategoryMaster cm inner join ContentCategoryMapping ccm ON ccm.CategoryId=cm.CategoryId where ccm.ContentId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and cm.isActive=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 401
    invoke-virtual {v3, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 402
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_3

    .line 404
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 406
    :cond_1
    const-string v8, "CategoryId"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    const-string v8, "CategoryName"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    const-string v8, "ParentCategoryID"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v8

    .line 412
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_4

    .line 415
    :goto_0
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_2
    throw v1

    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    goto :goto_0

    .line 418
    :cond_4
    :goto_3
    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setCategoryDetails(Ljava/util/ArrayList;)V

    .line 419
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    const/4 v6, 0x0

    .line 420
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 421
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 422
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setParentCatId(I)V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 427
    :cond_6
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 428
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v5, :cond_0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v4, p1

    goto :goto_9

    :catch_1
    move-exception v1

    move-object v4, p1

    goto :goto_7

    :cond_8
    :goto_5
    if-eqz p1, :cond_9

    .line 437
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v3, :cond_b

    .line 440
    :goto_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v1

    .line 434
    :goto_7
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_a

    .line 437
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    :goto_8
    return-object v0

    :goto_9
    if-eqz v4, :cond_c

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v3, :cond_d

    .line 440
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 442
    :cond_d
    throw v0
.end method

.method public getAllPromotionContents(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation

    .line 220
    const-string v0, "ActiveEndDate"

    const-string v1, "ActiveStartDate"

    const-string v2, "ContentId"

    .line 221
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 224
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 225
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getAllPromotionContents"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SELECT * from ContentMaster where IsActive=\'true\' and ContextId = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " order by CreatedDate desc /*and (ActiveStartDate= \'\' or ActiveStartDate<=strftime(\'%Y-%m-%d %H:%M:%f\',\'now\')) and */"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_4

    .line 232
    const-string p1, " limit 15"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 235
    :cond_0
    const-string p4, "SELECT cm.*  from ContentMaster cm INNER JOIN ContentCategoryMapping ccm on cm.ContentId =ccm.ContentId INNER JOIN CategoryMaster cat on ccm.CategoryId=cat.CategoryId INNER JOIN ContentTypeMaster ctm on cm.ContentType=ctm.ContentTypeId "

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v7, "where cm.IsActive=\'true\' and cm.ContextId = "

    invoke-direct {p4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const-string v7, "and  cm.contentid in "

    if-nez p4, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 243
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "and cm.ContentType in "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 245
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 246
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, " and cm.ContentType in "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_3
    :goto_0
    const-string p1, "group by cm.ContentId order by  cm.CreatedDate desc"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 p2, 0x0

    .line 267
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 268
    :try_start_1
    const-string p4, "CursorCount"

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_e

    .line 269
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p4

    if-eqz p4, :cond_e

    .line 271
    :cond_5
    new-instance p4, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-direct {p4}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;-><init>()V

    .line 272
    const-string v6, "MasterSyncLineId"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setMasterSyncLineId(I)V

    .line 273
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentId(I)V

    .line 274
    const-string v6, "ContentName"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentName(Ljava/lang/String;)V

    .line 275
    const-string v6, "Description"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setDescription(Ljava/lang/String;)V

    .line 276
    const-string v6, "LanguageId"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setLanguageId(I)V

    .line 277
    const-string v6, "ContentType"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentType(I)V

    .line 278
    const-string v6, "ThumbNail"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setThumbNail(Ljava/lang/String;)V

    .line 279
    const-string v6, "ContentServerLocation"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentServerLocation(Ljava/lang/String;)V

    .line 280
    const-string v6, "ContentDeviceLocation"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentDeviceLocation(Ljava/lang/String;)V

    .line 281
    const-string v6, "ContentData"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentData(Ljava/lang/String;)V

    .line 282
    const-string v6, "CreatedBy"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setCreatedBy(I)V

    .line 283
    const-string v6, "UpdatedBy"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setUpdatedBy(I)V

    .line 284
    const-string v6, "CreatedDate"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setCreatedDate(Ljava/lang/String;)V

    .line 285
    const-string v6, "UpdatedDate"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setUpdatedDate(Ljava/lang/String;)V

    .line 286
    const-string v6, "WatchStatus"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setWatchStatus(I)V

    .line 287
    const-string v6, "TestStatus"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setTestStatus(I)V

    .line 288
    const-string v6, "IsDeleted"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsDeleted(I)V

    .line 289
    const-string v6, "IsSharable"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsSharable(Ljava/lang/String;)V

    .line 290
    const-string v6, "IsBanner"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsBanner(Ljava/lang/String;)V

    .line 291
    const-string v6, "IsDownloadable"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsDownloadable(Ljava/lang/String;)V

    .line 292
    const-string v6, "SearchKeys"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setSearchKeys(Ljava/lang/String;)V

    .line 293
    const-string v6, "LocalThumbnail"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setLocalThumbnail(Ljava/lang/String;)V

    .line 295
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->contentId:I

    .line 297
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, 0x0

    if-nez v6, :cond_6

    .line 298
    iget-object v6, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->ft:Ljava/text/SimpleDateFormat;

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setActiveStartDate(Ljava/util/Date;)V

    goto :goto_2

    .line 300
    :cond_6
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setActiveStartDate(Ljava/util/Date;)V

    .line 303
    :goto_2
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 304
    iget-object v6, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->ft:Ljava/text/SimpleDateFormat;

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setActiveEndDate(Ljava/util/Date;)V

    goto :goto_3

    .line 306
    :cond_7
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setActiveEndDate(Ljava/util/Date;)V

    .line 311
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select cm.CategoryId,cm.CategoryName,cm.ParentCategoryID from CategoryMaster cm inner join ContentCategoryMapping ccm ON ccm.CategoryId=cm.CategoryId where ccm.ContentId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->contentId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "    and cm.isActive=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 312
    invoke-virtual {p1, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 313
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v6, :cond_a

    .line 315
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 317
    :cond_8
    const-string v8, "CategoryId"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v8, "CategoryName"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v8, "ParentCategoryID"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_8

    goto :goto_6

    :catchall_0
    move-exception p2

    goto :goto_5

    :catch_0
    move-exception v8

    .line 324
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_b

    .line 327
    :goto_4
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :goto_5
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_9
    throw p2

    :cond_a
    :goto_6
    if-eqz v6, :cond_b

    goto :goto_4

    .line 331
    :cond_b
    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_d

    const/4 v6, 0x0

    .line 332
    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_d

    .line 333
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 334
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p4, v8}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setParentCatId(I)V

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 340
    :cond_d
    invoke-virtual {p4, v7}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setCategoryDetails(Ljava/util/ArrayList;)V

    .line 342
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez p4, :cond_5

    :cond_e
    if-eqz p3, :cond_f

    .line 349
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz p1, :cond_11

    goto :goto_a

    :catch_1
    move-exception p2

    goto :goto_9

    :catchall_1
    move-exception p3

    move-object v10, p3

    move-object p3, p2

    move-object p2, v10

    goto :goto_b

    :catch_2
    move-exception p3

    move-object v10, p3

    move-object p3, p2

    move-object p2, v10

    .line 346
    :goto_9
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p3, :cond_10

    .line 349
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_10
    if-eqz p1, :cond_11

    .line 352
    :goto_a
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    :cond_11
    return-object v3

    :catchall_2
    move-exception p2

    :goto_b
    if-eqz p3, :cond_12

    .line 349
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_12
    if-eqz p1, :cond_13

    .line 352
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 354
    :cond_13
    throw p2
.end method

.method public getBaseUrlForVideos()Ljava/lang/String;
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 89
    const-string v1, "Select ItemValue from ConfigurablelookupMaster where ItemKey=\'CMBaseURL\'"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string v1, "ItemValue"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public getCategorySelection(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT cm.*,(select count(*) from CategoryMaster where ParentCategoryID=cm.CategoryId and cm.IsActive=1) as childcount FROM CategoryMaster cm where ParentCategoryID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and IsActive=1  order by childcount desc,Sequence asc"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    .line 107
    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 108
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    :cond_0
    new-instance p1, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;-><init>()V

    .line 111
    const-string v3, "CategoryId"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->setCategoryId(I)V

    .line 112
    const-string v3, "CategoryName"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->setCategoryName(Ljava/lang/String;)V

    .line 113
    const-string v3, "Description"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->setDescription(Ljava/lang/String;)V

    .line 114
    const-string v3, "ParentCategoryID"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->setParentCategoryID(I)V

    .line 115
    const-string v3, "Sequence"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->setSequence(I)V

    .line 116
    const-string v3, "childcount"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->setChildCount(I)V

    .line 117
    const-string v3, "IsActive"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->setIsActive(I)V

    .line 119
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :cond_1
    if-eqz v2, :cond_2

    .line 126
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v1, :cond_4

    .line 129
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 123
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 126
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0

    :goto_2
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v1, :cond_6

    .line 129
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 131
    :cond_6
    throw p1
.end method

.method public getCategorywiseDownloadsContents(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 525
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 526
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 528
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    .line 530
    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_8

    .line 531
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 533
    :cond_0
    new-instance v5, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-direct {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;-><init>()V

    .line 534
    const-string v6, "ContentId"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentId(I)V

    .line 535
    const-string v6, "ContentName"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentName(Ljava/lang/String;)V

    .line 536
    const-string v6, "ContentData"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentData(Ljava/lang/String;)V

    .line 537
    const-string v6, "Description"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setDescription(Ljava/lang/String;)V

    .line 538
    const-string v6, "ContentDeviceLocation"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentDeviceLocation(Ljava/lang/String;)V

    .line 539
    const-string v6, "ContentServerLocation"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentServerLocation(Ljava/lang/String;)V

    .line 540
    const-string v6, "ContentType"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentType(I)V

    .line 541
    const-string v6, "LanguageId"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setLanguageId(I)V

    .line 542
    const-string v6, "ThumbNail"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setThumbNail(Ljava/lang/String;)V

    .line 543
    const-string v6, "IsDeleted"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsDeleted(I)V

    .line 544
    const-string v6, "IsSharable"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsSharable(Ljava/lang/String;)V

    .line 545
    const-string v6, "IsBanner"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsBanner(Ljava/lang/String;)V

    .line 546
    const-string v6, "IsDownloadable"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsDownloadable(Ljava/lang/String;)V

    .line 547
    const-string v6, "SearchKeys"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setSearchKeys(Ljava/lang/String;)V

    .line 548
    const-string v6, "LocalThumbnail"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setLocalThumbnail(Ljava/lang/String;)V

    .line 549
    const-string v6, "CreatedDate"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setCreatedDate(Ljava/lang/String;)V

    .line 552
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select cm.CategoryId,cm.CategoryName,cm.ParentCategoryID from CategoryMaster cm inner join ContentCategoryMapping ccm ON ccm.CategoryId=cm.CategoryId where ccm.ContentId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and cm.isActive=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 553
    invoke-virtual {v3, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 554
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_3

    .line 556
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 558
    :cond_1
    const-string v8, "CategoryId"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    const-string v8, "CategoryName"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    const-string v8, "ParentCategoryID"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v8

    .line 564
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_4

    .line 567
    :goto_0
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 569
    :cond_2
    throw v1

    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    goto :goto_0

    .line 570
    :cond_4
    :goto_3
    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setCategoryDetails(Ljava/util/ArrayList;)V

    .line 571
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    const/4 v6, 0x0

    .line 572
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 573
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 574
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setParentCatId(I)V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 579
    :cond_6
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 580
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v5, :cond_0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v4, p1

    goto :goto_9

    :catch_1
    move-exception v1

    move-object v4, p1

    goto :goto_7

    :cond_8
    :goto_5
    if-eqz p1, :cond_9

    .line 589
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v3, :cond_b

    .line 592
    :goto_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v1

    .line 586
    :goto_7
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_a

    .line 589
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    :goto_8
    return-object v0

    :goto_9
    if-eqz v4, :cond_c

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v3, :cond_d

    .line 592
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 594
    :cond_d
    throw v0
.end method

.method public getContentNamesSuggestionsList(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select ContentName from ContentMaster where ContextId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    .line 198
    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 199
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 201
    :cond_0
    const-string p1, "ContentName"

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :cond_1
    if-eqz v2, :cond_2

    .line 209
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v1, :cond_4

    .line 212
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 206
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 209
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0

    :goto_2
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v1, :cond_6

    .line 212
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 214
    :cond_6
    throw p1
.end method

.method public getContentServerLocation()Ljava/lang/String;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 58
    const-string v1, "Select ItemValue from ConfigurablelookupMaster where ItemType=\'VideoUrl\'"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "ItemValue"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public getContentTypeMasters()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;",
            ">;"
        }
    .end annotation

    .line 676
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 678
    const-string v1, "select * from ContentTypeMaster where isactive =\'true\'"

    .line 679
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    .line 681
    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 682
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    :cond_0
    new-instance v1, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;-><init>()V

    .line 685
    const-string v4, "ContentTypeId"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;->setContentTypeId(I)V

    .line 686
    const-string v4, "ContentType"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;->setContentTypeName(Ljava/lang/String;)V

    .line 687
    const-string v4, "Description"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/promotions/models/ContentTypeMaster;->setDescription(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :cond_1
    if-eqz v3, :cond_2

    .line 695
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v2, :cond_4

    .line 698
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 692
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 695
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0

    :goto_2
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v2, :cond_6

    .line 698
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 700
    :cond_6
    throw v0
.end method

.method public getContents(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 600
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 601
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 603
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    .line 605
    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 606
    :try_start_1
    const-string v6, "Query"

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_7

    .line 607
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 609
    :cond_0
    new-instance p1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;-><init>()V

    .line 610
    const-string v6, "ContentId"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentId(I)V

    .line 611
    const-string v6, "ContentName"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentName(Ljava/lang/String;)V

    .line 612
    const-string v6, "ContentData"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentData(Ljava/lang/String;)V

    .line 613
    const-string v6, "Description"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setDescription(Ljava/lang/String;)V

    .line 614
    const-string v6, "ContentDeviceLocation"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentDeviceLocation(Ljava/lang/String;)V

    .line 615
    const-string v6, "ContentServerLocation"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentServerLocation(Ljava/lang/String;)V

    .line 616
    const-string v6, "ContentType"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentType(I)V

    .line 617
    const-string v6, "LanguageId"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setLanguageId(I)V

    .line 618
    const-string v6, "ThumbNail"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setThumbNail(Ljava/lang/String;)V

    .line 619
    const-string v6, "IsDeleted"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsDeleted(I)V

    .line 620
    const-string v6, "IsSharable"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsSharable(Ljava/lang/String;)V

    .line 621
    const-string v6, "IsBanner"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsBanner(Ljava/lang/String;)V

    .line 622
    const-string v6, "IsDownloadable"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsDownloadable(Ljava/lang/String;)V

    .line 623
    const-string v6, "SearchKeys"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setSearchKeys(Ljava/lang/String;)V

    .line 624
    const-string v6, "LocalThumbnail"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setLocalThumbnail(Ljava/lang/String;)V

    .line 625
    const-string v6, "CreatedDate"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setCreatedDate(Ljava/lang/String;)V

    .line 628
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select cm.CategoryId,cm.CategoryName,cm.ParentCategoryID from CategoryMaster cm inner join ContentCategoryMapping ccm ON ccm.CategoryId=cm.CategoryId where ccm.ContentId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and cm.isActive=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 629
    invoke-virtual {v3, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 630
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_3

    .line 632
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 634
    :cond_1
    const-string v8, "CategoryId"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    const-string v8, "CategoryName"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    const-string v8, "ParentCategoryID"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v8

    .line 640
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_4

    .line 643
    :goto_0
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 645
    :cond_2
    throw p1

    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    goto :goto_0

    .line 646
    :cond_4
    :goto_3
    invoke-virtual {p1, v7}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setCategoryDetails(Ljava/util/ArrayList;)V

    .line 647
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    const/4 v6, 0x0

    .line 648
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 649
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 650
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setParentCatId(I)V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 658
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez p1, :cond_0

    :cond_7
    if-eqz v5, :cond_8

    .line 665
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v3, :cond_a

    goto :goto_6

    :catchall_1
    move-exception p1

    move-object v4, v5

    goto :goto_7

    :catch_1
    move-exception p1

    move-object v4, v5

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_7

    :catch_2
    move-exception p1

    .line 662
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_9

    .line 665
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v3, :cond_a

    .line 668
    :goto_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    :cond_a
    return-object v0

    :goto_7
    if-eqz v4, :cond_b

    .line 665
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v3, :cond_c

    .line 668
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 670
    :cond_c
    throw p1
.end method

.method public getFavouriteContents(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 449
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 452
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    .line 454
    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_7

    .line 455
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 457
    :cond_0
    new-instance v5, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-direct {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;-><init>()V

    .line 458
    const-string v6, "ContentId"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentId(I)V

    .line 459
    const-string v6, "ContentName"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentName(Ljava/lang/String;)V

    .line 460
    const-string v6, "ContentData"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentData(Ljava/lang/String;)V

    .line 461
    const-string v6, "Description"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setDescription(Ljava/lang/String;)V

    .line 462
    const-string v6, "ContentDeviceLocation"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentDeviceLocation(Ljava/lang/String;)V

    .line 463
    const-string v6, "ContentServerLocation"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentServerLocation(Ljava/lang/String;)V

    .line 464
    const-string v6, "ContentType"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentType(I)V

    .line 465
    const-string v6, "LanguageId"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setLanguageId(I)V

    .line 466
    const-string v6, "ThumbNail"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setThumbNail(Ljava/lang/String;)V

    .line 467
    const-string v6, "ISFavourite"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setFavouriteStatus(I)V

    .line 468
    const-string v6, "CreatedDate"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setCreatedDate(Ljava/lang/String;)V

    .line 469
    const-string v6, "IsDeleted"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsDeleted(I)V

    .line 470
    const-string v6, "IsSharable"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsSharable(Ljava/lang/String;)V

    .line 471
    const-string v6, "IsBanner"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsBanner(Ljava/lang/String;)V

    .line 472
    const-string v6, "IsDownloadable"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setIsDownloadable(Ljava/lang/String;)V

    .line 473
    const-string v6, "SearchKeys"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setSearchKeys(Ljava/lang/String;)V

    .line 474
    const-string v6, "LocalThumbnail"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setLocalThumbnail(Ljava/lang/String;)V

    .line 477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select cm.CategoryId,cm.CategoryName,cm.ParentCategoryID from CategoryMaster cm inner join ContentCategoryMapping ccm ON ccm.CategoryId=cm.CategoryId where ccm.ContentId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and cm.isActive=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 478
    invoke-virtual {v3, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 479
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_3

    .line 481
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 483
    :cond_1
    const-string v8, "CategoryId"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    const-string v8, "CategoryName"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    const-string v8, "ParentCategoryID"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v8

    .line 489
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_4

    .line 492
    :goto_0
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_2
    throw v1

    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    goto :goto_0

    .line 495
    :cond_4
    :goto_3
    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setCategoryDetails(Ljava/util/ArrayList;)V

    .line 496
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    const/4 v6, 0x0

    .line 497
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 498
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 499
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setParentCatId(I)V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 507
    :cond_6
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v5, :cond_0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v4, p1

    goto :goto_9

    :catch_1
    move-exception v1

    move-object v4, p1

    goto :goto_7

    :cond_7
    :goto_5
    if-eqz p1, :cond_8

    .line 514
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v3, :cond_a

    .line 517
    :goto_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v1

    .line 511
    :goto_7
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_9

    .line 514
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    :goto_8
    return-object v0

    :goto_9
    if-eqz v4, :cond_b

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v3, :cond_c

    .line 517
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 519
    :cond_c
    throw v0
.end method

.method public getPdaId()Ljava/lang/String;
    .locals 3

    .line 891
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 892
    const-string v1, "SELECT pdaID FROM pmcUserDetails limit 1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 893
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 895
    const-string v1, "pdaID"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 897
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    if-eqz v0, :cond_1

    .line 899
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2
.end method

.method public getSearckKeysSuggestionsList(I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select SearchKeys from ContentMaster where SearchKeys <> \'\'   and ContextId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 166
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    .line 168
    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 169
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 171
    :cond_0
    const-string p1, "SearchKeys"

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 172
    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 173
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 174
    aget-object v4, p1, v3

    const-string v5, ""

    if-eq v4, v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :cond_3
    if-eqz v2, :cond_4

    .line 183
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v1, :cond_6

    .line 186
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 180
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 183
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    return-object v0

    :goto_3
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v1, :cond_8

    .line 186
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 188
    :cond_8
    throw p1
.end method

.method public getSingleValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 72
    invoke-virtual {v1, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 74
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 78
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 79
    throw p1

    .line 78
    :catch_0
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-object v0
.end method

.method public getSuggestionsList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    const-string v1, "select CategoryName from CategoryMaster where parentCategoryID!=0"

    .line 139
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    .line 141
    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 142
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    :cond_0
    const-string v1, "CategoryName"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 146
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :cond_2
    if-eqz v3, :cond_3

    .line 153
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v2, :cond_5

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 150
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    .line 153
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return-object v0

    :goto_2
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v2, :cond_7

    .line 156
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 158
    :cond_7
    throw v0
.end method

.method public getUsageIdNumber()I
    .locals 3

    .line 855
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 856
    const-string v2, "SELECT * FROM UsageDetails ORDER BY UsageId DESC LIMIT 1 "

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 857
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    const-string v1, "UsageId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->UsageId:I

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 862
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->UsageId:I

    return v0
.end method

.method public getUserId()I
    .locals 3

    .line 906
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 907
    const-string v1, "SELECT userId FROM pmcUserDetails limit 1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 908
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    const-string v1, "userId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 912
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    if-eqz v0, :cond_1

    .line 914
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v1
.end method

.method public insertContentLog(IIIILjava/lang/String;ZZILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 789
    new-instance p5, Landroid/content/ContentValues;

    invoke-direct {p5}, Landroid/content/ContentValues;-><init>()V

    .line 791
    const-string p7, "ContentId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p5, p7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 792
    const-string p1, "CategoryID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 793
    const-string p1, "UserId"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 794
    const-string p1, "PdaId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    .line 795
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "SyncStatus"

    invoke-virtual {p5, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 798
    const-string p2, "UsageDateTime"

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTimeForLogs()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string p2, "IsAvailableOffline"

    if-eqz p6, :cond_0

    const/4 p1, 0x1

    .line 800
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p5, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 802
    :cond_0
    invoke-virtual {p5, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 804
    :goto_0
    const-string p1, "CreatedBy"

    const-string p2, ""

    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "CreatedDate"

    invoke-virtual {p5, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string p1, "UpdatedBy"

    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UpdatedDate"

    invoke-virtual {p5, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string p1, "ModuleTypeId"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 810
    const-string p1, "Action"

    invoke-virtual {p5, p1, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-string p1, "ActionValue"

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 812
    const-string p1, "PrimaryKeyId"

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 813
    const-string p1, "PrimaryKeyCoulmn"

    invoke-virtual {p5, p1, p12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 821
    :try_start_0
    const-string p2, "UsageDetails"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    .line 822
    const-string p3, "resulkt"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 826
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 827
    const-string p2, "ErrorWHileInserting"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-void
.end method

.method public updatFavouriteStatus(Ljava/lang/String;II)V
    .locals 4

    const-string v0, "select Count(*) from ContentFaourites where ContentId="

    .line 747
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 748
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 749
    const-string p1, "serverUpdatedStatus"

    const-string p3, "false"

    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 751
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 753
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 754
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    :cond_0
    const-string p3, "ContentFaourites"

    if-lez v2, :cond_1

    .line 757
    :try_start_1
    const-string v0, "ContentId = ?"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, v1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 759
    :cond_1
    const-string v2, "ContentId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 760
    invoke-virtual {p1, p3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 763
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 765
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 766
    throw p1
.end method

.method public updateContent(ILjava/lang/String;)V
    .locals 3

    .line 707
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 708
    const-string v1, "ContentDeviceLocation"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 710
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "ContentMaster"

    const-string v2, "ContentId = ?"

    invoke-virtual {p2, v1, v0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 711
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-void
.end method

.method public updateContentLog(IIIILjava/lang/String;ZZI)V
    .locals 0

    .line 865
    div-int/lit16 p8, p8, 0x3e8

    .line 869
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 870
    const-string p2, "SELECT * FROM UsageDetails ORDER BY UsageId DESC LIMIT 1 "

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 871
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 873
    const-string p4, "UsageId"

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 878
    :goto_0
    new-instance p5, Landroid/content/ContentValues;

    invoke-direct {p5}, Landroid/content/ContentValues;-><init>()V

    .line 879
    const-string p6, "Duration"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {p5, p6, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 882
    new-instance p6, Ljava/lang/StringBuilder;

    const-string p7, "UsageId="

    invoke-direct {p6, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p6, "UsageDetails"

    invoke-virtual {p1, p6, p5, p4, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 883
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    if-eqz p2, :cond_1

    .line 885
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method public updateContentMaster(ILandroid/content/ContentValues;)V
    .locals 3

    .line 715
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 717
    :try_start_0
    const-string v1, "ContentMaster"

    const-string v2, "ContentId = ?"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 719
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 722
    throw p1
.end method

.method public updateWatchStatus(Ljava/lang/String;II)V
    .locals 2

    .line 738
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 739
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 741
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const-string p3, "ContentMaster"

    const-string v1, "ContentId = ?"

    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 742
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-void
.end method
