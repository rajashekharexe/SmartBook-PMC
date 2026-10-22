.class public Lcom/conceptglobal/pmc/backgroundtask/VideoCompressionWorkManager;
.super Landroidx/work/Worker;
.source "VideoCompressionWorkManager.java"


# static fields
.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "999"

.field private static final TAG:Ljava/lang/String; = "VideoCompressionWorkManager"

.field private static final default_notification_channel_id:Ljava/lang/String; = "default"


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 53
    iput-object p1, p0, Lcom/conceptglobal/pmc/backgroundtask/VideoCompressionWorkManager;->mContext:Landroid/content/Context;

    .line 54
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/backgroundtask/VideoCompressionWorkManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 13

    .line 75
    const-string v0, ""

    const-string v1, "Compression"

    const-string v2, "VideoSize"

    const-string v3, "VideoCompressionWorkManager"

    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/backgroundtask/VideoCompressionWorkManager;->getInputData()Landroidx/work/Data;

    move-result-object v4

    const-string v5, "videoFile"

    invoke-virtual {v4, v5}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/backgroundtask/VideoCompressionWorkManager;->getInputData()Landroidx/work/Data;

    move-result-object v5

    const-string v6, "imageId"

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 77
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/backgroundtask/VideoCompressionWorkManager;->getInputData()Landroidx/work/Data;

    move-result-object v7

    const-string v8, "compressedFile"

    invoke-virtual {v7, v8}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    const-string v8, "Before Compression"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-float v10, v10

    const/high16 v11, 0x49800000    # 1048576.0f

    div-float/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v1, v9}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->getInstance()Lcom/conceptglobal/pmc/promotions/video/MediaController;

    move-result-object v8

    invoke-virtual {v8, v4, v7}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->convertVideo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_0

    .line 87
    :try_start_1
    iget-object v8, p0, Lcom/conceptglobal/pmc/backgroundtask/VideoCompressionWorkManager;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v9, v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lcom/conceptglobal/pmc/common/Queries;->updatecompressedImage(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDBVideo(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v8, v6, v5}, Lcom/conceptglobal/pmc/common/Queries;->updateCompressionStatus(ILjava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    .line 90
    iget-object v4, p0, Lcom/conceptglobal/pmc/backgroundtask/VideoCompressionWorkManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "CompressedSuccess"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 91
    const-string v4, "After Compression"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v6, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 99
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 167
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
