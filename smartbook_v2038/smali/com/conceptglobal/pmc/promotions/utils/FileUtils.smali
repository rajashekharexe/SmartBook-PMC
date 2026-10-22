.class public Lcom/conceptglobal/pmc/promotions/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createApplicationFolder()V
    .locals 4

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".VideoCompressor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 41
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".VideoCompressor/Compressed Videos/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 44
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".VideoCompressor/Temp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method public static downloadThumnail(Landroid/content/Context;Lcom/conceptglobal/pmc/promotions/models/ContentMaster;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadManager;)V
    .locals 4

    .line 88
    invoke-static {p0}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getThumbNail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getThumbNail()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 91
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 92
    new-instance v2, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-direct {v2, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;-><init>(Landroid/net/Uri;)V

    new-instance v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;-><init>()V

    .line 94
    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setRetryPolicy(Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-static {p0}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getFilesDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->thumbnailDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setDestinationURI(Landroid/net/Uri;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object v0

    sget-object v1, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->HIGH:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setPriority(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/promotions/utils/FileUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/conceptglobal/pmc/promotions/utils/FileUtils$1;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/promotions/models/ContentMaster;)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setStatusListener(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object p0

    .line 117
    invoke-interface {p2, p0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadManager;->add(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)I

    :cond_0
    return-void
.end method

.method public static saveTempFile(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 6

    .line 50
    const-string v0, ""

    const-string v1, "FileUtils"

    .line 0
    const-string v2, ".VideoCompressor/Temp/"

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v3, 0x0

    .line 56
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 59
    :try_start_1
    new-instance p2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    :try_start_2
    new-instance p0, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v3, 0x400

    .line 61
    :try_start_3
    new-array v3, v3, [B

    .line 63
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 64
    invoke-virtual {p0, v3, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_1

    .line 72
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 74
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :cond_1
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    :catch_1
    move-exception p0

    .line 81
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v2

    move-object p0, v3

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object p0, v3

    :goto_2
    move-object v3, p1

    goto :goto_7

    :catch_4
    move-exception v2

    move-object p0, v3

    move-object p2, p0

    :goto_3
    move-object v3, p1

    goto :goto_4

    :catchall_2
    move-exception p2

    move-object p0, v3

    goto :goto_7

    :catch_5
    move-exception v2

    move-object p0, v3

    move-object p2, p0

    .line 68
    :goto_4
    :try_start_6
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v3, :cond_2

    .line 72
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    .line 74
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_5
    if-eqz p0, :cond_3

    .line 79
    :try_start_8
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_3
    :goto_6
    return-object p2

    :catchall_3
    move-exception p2

    :goto_7
    if-eqz v3, :cond_4

    .line 72
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_8

    :catch_7
    move-exception p1

    .line 74
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_8
    if-eqz p0, :cond_5

    .line 79
    :try_start_a
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_9

    :catch_8
    move-exception p0

    .line 81
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :cond_5
    :goto_9
    throw p2
.end method
