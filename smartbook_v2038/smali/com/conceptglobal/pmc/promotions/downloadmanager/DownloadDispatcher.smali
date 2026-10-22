.class public Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;
.super Ljava/lang/Thread;
.source "DownloadDispatcher.java"


# instance fields
.field private final BUFFER_SIZE:I

.field private final HTTP_REQUESTED_RANGE_NOT_SATISFIABLE:I

.field private final HTTP_TEMP_REDIRECT:I

.field private final MAX_REDIRECTS:I

.field private mContentLength:J

.field private mCurrentBytes:J

.field private mDelivery:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z

.field private mRedirectionCount:I

.field private mTimer:Ljava/util/Timer;

.field private shouldAllowRedirects:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;",
            ">;",
            "Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mQuit:Z

    const/16 v1, 0x1000

    .line 50
    iput v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->BUFFER_SIZE:I

    .line 53
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mRedirectionCount:I

    const/4 v0, 0x5

    .line 56
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->MAX_REDIRECTS:I

    const/16 v0, 0x1a0

    .line 58
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->HTTP_REQUESTED_RANGE_NOT_SATISFIABLE:I

    const/16 v0, 0x133

    .line 59
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->HTTP_TEMP_REDIRECT:I

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->shouldAllowRedirects:Z

    .line 70
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 71
    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mDelivery:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->executeDownload(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;Ljava/lang/String;)V

    return-void
.end method

.method private attemptRetryOnTimeOutException(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V
    .locals 5

    const/16 v0, 0x80

    .line 380
    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadState(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;I)V

    .line 381
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getRetryPolicy()Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;

    move-result-object v0

    .line 383
    :try_start_0
    invoke-interface {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;->retry()V

    .line 384
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher$1;

    invoke-direct {v2, p0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher$1;-><init>(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V

    .line 389
    invoke-interface {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;->getCurrentTimeout()I

    move-result v0

    int-to-long v3, v0

    .line 384
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x3f1

    .line 392
    const-string v1, "Connection time out after maximum retires attempted"

    invoke-direct {p0, p1, v0, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private cleanupDestination(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V
    .locals 2

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cleanupDestination() deleting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDestinationURI()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->d(Ljava/lang/String;)I

    .line 403
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDestinationURI()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 405
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private executeDownload(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;Ljava/lang/String;)V
    .locals 6

    .line 113
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6

    const/4 p2, 0x0

    .line 122
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x0

    .line 123
    :try_start_2
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 124
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getRetryPolicy()Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;->getCurrentTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 125
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getRetryPolicy()Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;->getCurrentTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 127
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getCustomHeaders()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 130
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 136
    invoke-direct {p0, p1, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadState(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;I)V

    .line 138
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response code obtained for downloaded Id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : httpResponse Code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->v(Ljava/lang/String;)I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_8

    const/16 v2, 0xce

    if-eq v1, v2, :cond_8

    const/16 p2, 0x133

    if-eq v1, p2, :cond_4

    const/16 p2, 0x1a0

    if-eq v1, p2, :cond_3

    const/16 p2, 0x1f4

    if-eq v1, p2, :cond_2

    const/16 p2, 0x1f7

    if-eq v1, p2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 183
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled HTTP response:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " message:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x3ea

    invoke-direct {p0, p1, v1, p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V

    goto :goto_2

    .line 177
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V

    goto :goto_2

    .line 180
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V

    goto :goto_2

    .line 174
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V

    goto :goto_2

    .line 161
    :cond_4
    :goto_1
    :pswitch_0
    iget p2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mRedirectionCount:I

    const/4 v1, 0x5

    if-ge p2, v1, :cond_5

    iget-boolean v2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->shouldAllowRedirects:Z

    if-eqz v2, :cond_5

    add-int/lit8 p2, p2, 0x1

    .line 162
    iput p2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mRedirectionCount:I

    .line 163
    const-string p2, "ContentValues"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect for downloaded Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string p2, "Location"

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->executeDownload(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-le p2, v1, :cond_7

    .line 168
    iget-boolean p2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->shouldAllowRedirects:Z

    if-eqz p2, :cond_7

    .line 169
    const-string p2, "Too many redirects, giving up"

    const/16 v1, 0x3ed

    invoke-direct {p0, p1, v1, p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_6

    .line 198
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-void

    :cond_7
    :goto_2
    if-eqz v0, :cond_b

    goto :goto_7

    .line 148
    :cond_8
    :try_start_3
    iput-boolean p2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->shouldAllowRedirects:Z

    .line 149
    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->readResponseHeaders(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;Ljava/net/HttpURLConnection;)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_9

    .line 150
    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->transferData(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;Ljava/net/HttpURLConnection;)V

    goto :goto_3

    .line 152
    :cond_9
    const-string p2, "Transfer-Encoding not found as well as can\'t know size of download, giving up"

    const/16 v1, 0x3ee

    invoke-direct {p0, p1, v1, p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-eqz v0, :cond_a

    .line 198
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    return-void

    :catch_0
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception p2

    goto :goto_5

    :catch_2
    move-exception p2

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    .line 194
    :goto_4
    :try_start_4
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 195
    const-string p2, "Trouble with low-level sockets"

    const/16 v1, 0x3ec

    invoke-direct {p0, p1, v1, p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V

    if-eqz v0, :cond_b

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    .line 191
    :goto_5
    invoke-virtual {p2}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 192
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->attemptRetryOnTimeOutException(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V

    if-eqz v0, :cond_b

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    .line 187
    :goto_6
    invoke-virtual {p2}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 189
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->attemptRetryOnTimeOutException(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_b

    .line 198
    :goto_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    return-void

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_8
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 200
    :cond_c
    throw p1

    :catch_6
    const/16 p2, 0x3ef

    .line 115
    const-string v0, "MalformedURLException: URI passed is malformed."

    invoke-direct {p0, p1, p2, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getHeaderFieldLong(Ljava/net/URLConnection;Ljava/lang/String;J)J
    .locals 0

    .line 373
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    return-wide p3
.end method

.method private readFromResponse(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;[BLjava/io/InputStream;)I
    .locals 0

    .line 327
    :try_start_0
    invoke-virtual {p3, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p2

    .line 329
    const-string p3, "unexpected end of stream"

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/16 p2, 0x3ec

    .line 332
    const-string p3, "IOException: Failed reading response"

    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V

    const/high16 p1, -0x80000000

    return p1
.end method

.method private readResponseHeaders(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;Ljava/net/HttpURLConnection;)I
    .locals 5

    .line 353
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    .line 354
    iput-wide v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mContentLength:J

    if-nez v0, :cond_0

    .line 357
    const-string p1, "Content-Length"

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->getHeaderFieldLong(Ljava/net/URLConnection;Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mContentLength:J

    goto :goto_0

    .line 359
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring Content-Length since Transfer-Encoding is also defined for Downloaded Id "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->v(Ljava/lang/String;)I

    .line 362
    :goto_0
    iget-wide p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mContentLength:J

    const/4 v3, 0x1

    cmp-long v4, p1, v1

    if-eqz v4, :cond_1

    return v3

    :cond_1
    if-eqz v0, :cond_3

    .line 364
    const-string p1, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    return v3

    :cond_3
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method private transferData(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 10

    const/16 v0, 0x1000

    .line 290
    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    .line 291
    iput-wide v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mCurrentBytes:J

    const/16 v3, 0x8

    .line 292
    invoke-virtual {p1, v3}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setDownloadState(I)V

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Content Length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mContentLength:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " for Download Id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->v(Ljava/lang/String;)I

    .line 295
    :goto_0
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Stopping the download as Download Request is cancelled for Downloaded Id "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->v(Ljava/lang/String;)I

    .line 297
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->finish()V

    const/16 p2, 0x3f0

    .line 298
    const-string p3, "Download cancelled"

    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V

    return-void

    .line 301
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->readFromResponse(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;[BLjava/io/InputStream;)I

    move-result v3

    .line 303
    iget-wide v4, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mContentLength:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    cmp-long v6, v4, v1

    if-lez v6, :cond_1

    .line 304
    iget-wide v6, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mCurrentBytes:J

    const-wide/16 v8, 0x64

    mul-long v8, v8, v6

    div-long/2addr v8, v4

    long-to-int v4, v8

    .line 305
    invoke-direct {p0, p1, v4, v6, v7}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadProgress(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;IJ)V

    :cond_1
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 309
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadComplete(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V

    return-void

    :cond_2
    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_3

    return-void

    .line 315
    :cond_3
    invoke-direct {p0, p1, v0, v3, p3}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->writeDataToDestination(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;[BILjava/io/OutputStream;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 316
    iget-wide v4, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mCurrentBytes:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mCurrentBytes:J

    goto :goto_0

    .line 318
    :cond_4
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->finish()V

    const/16 p2, 0x3e9

    .line 319
    const-string p3, "Failed writing file"

    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V

    return-void
.end method

.method private transferData(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;Ljava/net/HttpURLConnection;)V
    .locals 7

    .line 204
    const-string v0, "Error in creating destination file"

    .line 207
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->cleanupDestination(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V

    const/4 v1, 0x0

    .line 210
    :try_start_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p2, v1

    move-object v0, p2

    goto/16 :goto_c

    :catch_0
    move-exception p2

    .line 212
    :try_start_1
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p2, v1

    .line 215
    :goto_0
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDestinationURI()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/16 v4, 0x3e9

    if-nez v3, :cond_1

    .line 222
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 223
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 224
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 226
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 228
    invoke-direct {p0, p1, v4, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto :goto_1

    :catch_1
    move-exception v2

    .line 232
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 234
    invoke-direct {p0, p1, v4, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_1
    move-object v0, v1

    goto :goto_4

    .line 242
    :cond_1
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 243
    :try_start_6
    move-object v2, v0

    check-cast v2, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v0, v1

    .line 245
    :goto_2
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_3
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    if-nez p2, :cond_2

    .line 249
    :try_start_8
    const-string v2, "Error in creating input stream"

    invoke-direct {p0, p1, v4, v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v6, v1

    move-object v1, p2

    move-object p2, v0

    move-object v0, v6

    goto :goto_c

    :cond_2
    if-nez v1, :cond_3

    .line 253
    const-string v2, "Error in writing download contents to the destination file"

    invoke-direct {p0, p1, v4, v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V

    goto :goto_4

    .line 257
    :cond_3
    invoke-direct {p0, p1, p2, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->transferData(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_4
    if-eqz p2, :cond_4

    .line 264
    :try_start_9
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 267
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    .line 272
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_8

    :catch_5
    move-exception p1

    goto :goto_7

    :cond_5
    :goto_6
    if-eqz v0, :cond_7

    .line 275
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_a

    .line 278
    :goto_7
    :try_start_b
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v1, :cond_8

    .line 281
    :try_start_c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_b

    :goto_8
    if-eqz v1, :cond_6

    :try_start_d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_9

    :catch_6
    move-exception p2

    .line 283
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 285
    :cond_6
    :goto_9
    throw p1

    :cond_7
    :goto_a
    if-eqz v1, :cond_8

    .line 281
    :try_start_e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_b

    :catch_7
    move-exception p1

    .line 283
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_b
    return-void

    :catchall_3
    move-exception p1

    move-object v6, v1

    move-object v1, p2

    move-object p2, v6

    goto :goto_c

    :catchall_4
    move-exception p1

    move-object v0, v1

    move-object v1, p2

    move-object p2, v0

    :goto_c
    if-eqz v1, :cond_9

    .line 264
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_d

    :catch_8
    move-exception v1

    .line 267
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_d
    if-eqz v0, :cond_a

    .line 272
    :try_start_10
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_e

    :catchall_5
    move-exception p1

    goto :goto_10

    :catch_9
    move-exception p2

    goto :goto_f

    :cond_a
    :goto_e
    if-eqz p2, :cond_c

    .line 275
    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_12

    .line 278
    :goto_f
    :try_start_11
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    if-eqz v0, :cond_d

    .line 281
    :try_start_12
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    goto :goto_13

    :goto_10
    if-eqz v0, :cond_b

    :try_start_13
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    goto :goto_11

    :catch_a
    move-exception p2

    .line 283
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 285
    :cond_b
    :goto_11
    throw p1

    :cond_c
    :goto_12
    if-eqz v0, :cond_d

    .line 281
    :try_start_14
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    goto :goto_13

    :catch_b
    move-exception p2

    .line 283
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 286
    :cond_d
    :goto_13
    throw p1
.end method

.method private updateDownloadComplete(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mDelivery:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;->postDownloadComplete(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V

    const/16 v0, 0x10

    .line 415
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setDownloadState(I)V

    .line 416
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->finish()V

    return-void
.end method

.method private updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 420
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->shouldAllowRedirects:Z

    const/16 v0, 0x20

    .line 421
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setDownloadState(I)V

    .line 422
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDeleteDestinationFileOnFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->cleanupDestination(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mDelivery:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

    invoke-virtual {v0, p1, p2, p3}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;->postDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V

    .line 426
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->finish()V

    return-void
.end method

.method private updateDownloadProgress(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;IJ)V
    .locals 7

    .line 430
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mDelivery:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;

    iget-wide v2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mContentLength:J

    move-object v1, p1

    move-wide v4, p3

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequestQueue$CallBackDelivery;->postProgressUpdate(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;JJI)V

    return-void
.end method

.method private updateDownloadState(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;I)V
    .locals 0

    .line 410
    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setDownloadState(I)V

    return-void
.end method

.method private writeDataToDestination(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;[BILjava/io/OutputStream;)Z
    .locals 2

    const/16 v0, 0x3e9

    const/4 v1, 0x0

    .line 340
    :try_start_0
    invoke-virtual {p4, p2, v1, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    .line 345
    :catch_0
    const-string p2, "Exception when writing download contents to the destination file"

    invoke-direct {p0, p1, v0, p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V

    goto :goto_0

    .line 342
    :catch_1
    const-string p2, "IOException when writing download contents to the destination file"

    invoke-direct {p0, p1, v0, p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V

    :goto_0
    return v1
.end method


# virtual methods
.method quit()V
    .locals 1

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mQuit:Z

    .line 106
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 3

    const/16 v0, 0xa

    .line 76
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 77
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mTimer:Ljava/util/Timer;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 82
    :try_start_1
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mRedirectionCount:I

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->shouldAllowRedirects:Z

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download initiated for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/Log;->v(Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 85
    invoke-direct {p0, v1, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadState(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;I)V

    .line 86
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->executeDownload(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v0, v1

    goto :goto_1

    :catch_1
    nop

    .line 89
    :goto_1
    iget-boolean v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mQuit:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->finish()V

    .line 93
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDownloadState()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    const/16 v1, 0x3f0

    .line 94
    const-string v2, "Download cancelled"

    invoke-direct {p0, v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->updateDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
