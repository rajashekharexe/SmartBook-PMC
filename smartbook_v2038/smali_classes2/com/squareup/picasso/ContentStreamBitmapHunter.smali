.class Lcom/squareup/picasso/ContentStreamBitmapHunter;
.super Lcom/squareup/picasso/BitmapHunter;
.source "ContentStreamBitmapHunter.java"


# instance fields
.field final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V

    .line 33
    iput-object p1, p0, Lcom/squareup/picasso/ContentStreamBitmapHunter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method decode(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/ContentStreamBitmapHunter;->decodeContentStream(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected decodeContentStream(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/squareup/picasso/ContentStreamBitmapHunter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    invoke-static {p1}, Lcom/squareup/picasso/ContentStreamBitmapHunter;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Lcom/squareup/picasso/Request;->hasSize()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 49
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 52
    :try_start_0
    iget-object v2, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    :try_start_1
    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    invoke-static {v2}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    .line 57
    iget v2, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v4, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v2, v4, v1}, Lcom/squareup/picasso/ContentStreamBitmapHunter;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v3, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 55
    :goto_0
    invoke-static {v3}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw p1

    .line 59
    :cond_0
    :goto_1
    iget-object p1, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 61
    :try_start_2
    invoke-static {p1, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 63
    invoke-static {p1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v0

    :catchall_2
    move-exception v0

    invoke-static {p1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method

.method getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .locals 1

    .line 42
    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method
