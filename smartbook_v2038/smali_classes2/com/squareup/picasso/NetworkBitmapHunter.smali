.class Lcom/squareup/picasso/NetworkBitmapHunter;
.super Lcom/squareup/picasso/BitmapHunter;
.source "NetworkBitmapHunter.java"


# static fields
.field static final DEFAULT_RETRY_COUNT:I = 0x2

.field private static final MARKER:I = 0x10000


# instance fields
.field private final downloader:Lcom/squareup/picasso/Downloader;

.field retryCount:I


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/Downloader;)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V

    .line 39
    iput-object p6, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->downloader:Lcom/squareup/picasso/Downloader;

    const/4 p1, 0x2

    .line 40
    iput p1, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->retryCount:I

    return-void
.end method

.method private decodeStream(Ljava/io/InputStream;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 79
    :cond_0
    new-instance v1, Lcom/squareup/picasso/MarkableInputStream;

    invoke-direct {v1, p1}, Lcom/squareup/picasso/MarkableInputStream;-><init>(Ljava/io/InputStream;)V

    const/high16 p1, 0x10000

    .line 82
    invoke-virtual {v1, p1}, Lcom/squareup/picasso/MarkableInputStream;->savePosition(I)J

    move-result-wide v2

    .line 84
    invoke-static {v1}, Lcom/squareup/picasso/Utils;->isWebPFile(Ljava/io/InputStream;)Z

    move-result p1

    .line 85
    invoke-virtual {v1, v2, v3}, Lcom/squareup/picasso/MarkableInputStream;->reset(J)V

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    .line 89
    invoke-static {v1}, Lcom/squareup/picasso/Utils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 90
    invoke-static {p2}, Lcom/squareup/picasso/NetworkBitmapHunter;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 91
    invoke-virtual {p2}, Lcom/squareup/picasso/Request;->hasSize()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 92
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 94
    array-length v1, p1

    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 95
    iget v1, p2, Lcom/squareup/picasso/Request;->targetWidth:I

    iget p2, p2, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v1, p2, v0}, Lcom/squareup/picasso/NetworkBitmapHunter;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;)V

    .line 97
    :cond_1
    array-length p2, p1

    invoke-static {p1, v2, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 99
    :cond_2
    invoke-static {p2}, Lcom/squareup/picasso/NetworkBitmapHunter;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p1

    .line 100
    invoke-virtual {p2}, Lcom/squareup/picasso/Request;->hasSize()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 101
    iput-boolean v4, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 103
    invoke-static {v1, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 104
    iget v4, p2, Lcom/squareup/picasso/Request;->targetWidth:I

    iget p2, p2, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v4, p2, p1}, Lcom/squareup/picasso/NetworkBitmapHunter;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;)V

    .line 106
    invoke-virtual {v1, v2, v3}, Lcom/squareup/picasso/MarkableInputStream;->reset(J)V

    .line 108
    :cond_3
    invoke-static {v1, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method decode(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget v0, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->retryCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->downloader:Lcom/squareup/picasso/Downloader;

    iget-object v2, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Lcom/squareup/picasso/Downloader;->load(Landroid/net/Uri;Z)Lcom/squareup/picasso/Downloader$Response;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 51
    :cond_1
    iget-boolean v1, v0, Lcom/squareup/picasso/Downloader$Response;->cached:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->NETWORK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    :goto_1
    iput-object v1, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 53
    invoke-virtual {v0}, Lcom/squareup/picasso/Downloader$Response;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    .line 58
    :cond_3
    invoke-virtual {v0}, Lcom/squareup/picasso/Downloader$Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 60
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/squareup/picasso/NetworkBitmapHunter;->decodeStream(Ljava/io/InputStream;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-static {v0}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw p1
.end method

.method shouldRetry(ZLandroid/net/NetworkInfo;)Z
    .locals 2

    .line 67
    iget p1, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->retryCount:I

    const/4 v0, 0x0

    if-lez p1, :cond_1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 71
    iput p1, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->retryCount:I

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
