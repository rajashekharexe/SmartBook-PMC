.class public Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;
.super Landroid/os/ResultReceiver;
.source "FileDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDownloader"
.end annotation


# instance fields
.field private downloadDetails:Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;

.field private onDownloadStatusListener:Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 279
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static getInstance(Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;)Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;
    .locals 2

    .line 255
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 257
    new-instance v1, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;

    invoke-direct {v1, v0}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;-><init>(Landroid/os/Handler;)V

    .line 259
    iput-object p0, v1, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;->downloadDetails:Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;

    .line 261
    iput-object p1, v1, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;->onDownloadStatusListener:Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;

    return-object v1
.end method


# virtual methods
.method public download(Landroid/content/Context;)V
    .locals 3

    .line 268
    invoke-static {p1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;->access$000(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    const-string v1, "downloader_receiver"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 272
    const-string v1, "download_details"

    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;->downloadDetails:Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public getDownloadDetails()Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;->downloadDetails:Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;

    return-object v0
.end method

.method public getOnDownloadStatusListener()Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;->onDownloadStatusListener:Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;

    return-object v0
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 285
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 287
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;->onDownloadStatusListener:Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;->access$100()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 294
    const-string p1, "download_started"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 297
    iget-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;->onDownloadStatusListener:Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;

    invoke-interface {p1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;->onDownloadStarted()V

    goto :goto_0

    .line 299
    :cond_1
    const-string p1, "download_completed"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 302
    iget-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;->onDownloadStatusListener:Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;

    invoke-interface {p1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;->onDownloadCompleted()V

    goto :goto_0

    .line 304
    :cond_2
    const-string p1, "download_progress"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 306
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 307
    iget-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;->onDownloadStatusListener:Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;

    invoke-interface {p2, p1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;->onDownloadProgress(I)V

    goto :goto_0

    .line 311
    :cond_3
    invoke-static {}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;->access$200()I

    move-result p2

    if-ne p1, p2, :cond_4

    .line 313
    iget-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;->onDownloadStatusListener:Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;

    invoke-interface {p1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;->onDownloadFailed()V

    :cond_4
    :goto_0
    return-void
.end method

.method public setDownloadDetails(Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;->downloadDetails:Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;

    return-void
.end method

.method public setOnDownloadStatusListener(Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;->onDownloadStatusListener:Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;

    return-void
.end method
