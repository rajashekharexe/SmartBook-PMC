.class Lcom/squareup/picasso/AssetBitmapHunter;
.super Lcom/squareup/picasso/BitmapHunter;
.source "AssetBitmapHunter.java"


# static fields
.field protected static final ANDROID_ASSET:Ljava/lang/String; = "android_asset"

.field private static final ASSET_PREFIX_LENGTH:I = 0x16


# instance fields
.field private assetManager:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/picasso/AssetBitmapHunter;->assetManager:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method decode(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object p1, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/squareup/picasso/AssetBitmapHunter;->ASSET_PREFIX_LENGTH:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/AssetBitmapHunter;->decodeAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method decodeAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/squareup/picasso/AssetBitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-static {v0}, Lcom/squareup/picasso/AssetBitmapHunter;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/squareup/picasso/AssetBitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->hasSize()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 38
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/squareup/picasso/AssetBitmapHunter;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    invoke-static {v1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    .line 46
    iget-object v1, p0, Lcom/squareup/picasso/AssetBitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget v1, v1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget-object v3, p0, Lcom/squareup/picasso/AssetBitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget v3, v3, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v1, v3, v0}, Lcom/squareup/picasso/AssetBitmapHunter;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 44
    :goto_0
    invoke-static {v2}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw p1

    .line 48
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/squareup/picasso/AssetBitmapHunter;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 50
    :try_start_2
    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 52
    invoke-static {p1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v0

    :catchall_2
    move-exception v0

    invoke-static {p1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method

.method getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .locals 1

    .line 32
    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method
