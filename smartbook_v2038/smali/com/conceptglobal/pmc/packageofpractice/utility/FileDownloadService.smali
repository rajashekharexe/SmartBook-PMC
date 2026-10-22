.class public Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;
.super Landroid/app/IntentService;
.source "FileDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;,
        Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;,
        Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DOWNLOADER_RECEIVER:Ljava/lang/String; = "downloader_receiver"

.field private static final DOWNLOAD_COMPLETED:Ljava/lang/String; = "download_completed"

.field private static final DOWNLOAD_DETAILS:Ljava/lang/String; = "download_details"

.field private static final DOWNLOAD_FAILED:Ljava/lang/String; = "download_failed"

.field private static final DOWNLOAD_PROGRESS:Ljava/lang/String; = "download_progress"

.field private static final DOWNLOAD_STARTED:Ljava/lang/String; = "download_started"

.field private static STATUS_FAILED:I = 0xc8

.field private static STATUS_OK:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;->isOnline(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 35
    sget v0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;->STATUS_OK:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 35
    sget v0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;->STATUS_FAILED:I

    return v0
.end method

.method private createDir(Ljava/io/File;)V
    .locals 3

    .line 235
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating dir "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZIP E"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 243
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not create dir "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isOnline(Landroid/content/Context;)Z
    .locals 1

    .line 477
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 479
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private unzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    :try_start_0
    new-instance p1, Ljava/util/zip/ZipFile;

    invoke-direct {p1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 181
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 185
    invoke-direct {p0, p1, v1, p2}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;->unzipEntry(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 190
    const-string p2, "Unzip zip"

    const-string v0, "Unzip exception"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private unzipEntry(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;->createDir(Ljava/io/File;)V

    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_1

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;->createDir(Ljava/io/File;)V

    .line 206
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Extracting: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "ZIP E"

    invoke-static {v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    .line 209
    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-direct {p2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 210
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 218
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->read()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    .line 219
    invoke-virtual {p1, p3}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 224
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V

    .line 229
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V

    return-void

    :catchall_0
    move-exception p3

    .line 224
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V

    .line 225
    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p3

    .line 228
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V

    .line 229
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V

    .line 230
    throw p3
.end method


# virtual methods
.method public downloadCompleted(Landroid/os/ResultReceiver;)V
    .locals 3

    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    const-string v1, "download_completed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    sget v1, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;->STATUS_OK:I

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public downloadFailed(Landroid/os/ResultReceiver;)V
    .locals 3

    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    const-string v1, "download_failed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 170
    sget v1, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;->STATUS_FAILED:I

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public downloadStarted(Landroid/os/ResultReceiver;)V
    .locals 3

    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    const-string v1, "download_started"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    sget v1, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;->STATUS_OK:I

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13

    const-string v0, "Length of file: "

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 63
    const-string v1, "downloader_receiver"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    const-string v2, "download_details"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 69
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 71
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;

    .line 76
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->getServerFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 82
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    .line 84
    const-string v4, "FileDownloaderService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;->downloadStarted(Landroid/os/ResultReceiver;)V

    .line 87
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 89
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->getLocalFilePath()Ljava/lang/String;

    move-result-object v2

    .line 91
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1000

    .line 93
    new-array v5, v5, [B

    const-wide/16 v6, 0x0

    .line 99
    :goto_0
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    int-to-long v9, v8

    add-long/2addr v6, v9

    const-wide/16 v9, 0x64

    mul-long v9, v9, v6

    int-to-long v11, v3

    .line 103
    div-long/2addr v9, v11

    long-to-int v10, v9

    .line 105
    invoke-virtual {p0, v10, v1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;->sendProgress(ILandroid/os/ResultReceiver;)V

    const/4 v9, 0x0

    .line 107
    invoke-virtual {v4, v5, v9, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 111
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 112
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 114
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->isRequiresUnzip()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->getUnzipAtFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 120
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;->unzip(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_3
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;->downloadCompleted(Landroid/os/ResultReceiver;)V

    .line 130
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->isDeleteZipAfterExtract()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 132
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 138
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;->downloadFailed(Landroid/os/ResultReceiver;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public sendProgress(ILandroid/os/ResultReceiver;)V
    .locals 2

    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    const-string v1, "download_progress"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    sget p1, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;->STATUS_OK:I

    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
