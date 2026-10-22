.class Lcom/squareup/picasso/MediaStoreBitmapHunter;
.super Lcom/squareup/picasso/ContentStreamBitmapHunter;
.source "MediaStoreBitmapHunter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;
    }
.end annotation


# static fields
.field private static final CONTENT_ORIENTATION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "orientation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/picasso/MediaStoreBitmapHunter;->CONTENT_ORIENTATION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V
    .locals 0

    .line 43
    invoke-direct/range {p0 .. p6}, Lcom/squareup/picasso/ContentStreamBitmapHunter;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V

    return-void
.end method

.method static getExitOrientation(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    :try_start_0
    sget-object v4, Lcom/squareup/picasso/MediaStoreBitmapHunter;->CONTENT_ORIENTATION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 87
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 96
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return p0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return v0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0

    :catch_0
    nop

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return v0
.end method

.method static getPicassoKind(II)Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;
    .locals 1

    .line 75
    sget-object v0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->MICRO:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    iget v0, v0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->width:I

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->MICRO:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    iget v0, v0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->height:I

    if-gt p1, v0, :cond_0

    .line 76
    sget-object p0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->MICRO:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    return-object p0

    .line 77
    :cond_0
    sget-object v0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->MINI:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    iget v0, v0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->width:I

    if-gt p0, v0, :cond_1

    sget-object p0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->MINI:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    iget p0, p0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->height:I

    if-gt p1, p0, :cond_1

    .line 78
    sget-object p0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->MINI:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    return-object p0

    .line 80
    :cond_1
    sget-object p0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->FULL:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    return-object p0
.end method


# virtual methods
.method decode(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/squareup/picasso/MediaStoreBitmapHunter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 48
    iget-object v1, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/squareup/picasso/MediaStoreBitmapHunter;->getExitOrientation(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/squareup/picasso/MediaStoreBitmapHunter;->setExifRotation(I)V

    .line 50
    invoke-virtual {p1}, Lcom/squareup/picasso/Request;->hasSize()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    iget v1, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v2, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v1, v2}, Lcom/squareup/picasso/MediaStoreBitmapHunter;->getPicassoKind(II)Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    move-result-object v1

    .line 52
    sget-object v2, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->FULL:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    if-ne v1, v2, :cond_0

    .line 53
    invoke-super {p0, p1}, Lcom/squareup/picasso/ContentStreamBitmapHunter;->decode(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 56
    :cond_0
    iget-object v2, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 58
    invoke-static {p1}, Lcom/squareup/picasso/MediaStoreBitmapHunter;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    const/4 v5, 0x1

    .line 59
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 61
    iget v5, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v6, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    iget v7, v1, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->width:I

    iget v8, v1, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->height:I

    invoke-static {v5, v6, v7, v8, v4}, Lcom/squareup/picasso/MediaStoreBitmapHunter;->calculateInSampleSize(IIIILandroid/graphics/BitmapFactory$Options;)V

    .line 64
    iget v1, v1, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->androidKind:I

    invoke-static {v0, v2, v3, v1, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 71
    :cond_1
    invoke-super {p0, p1}, Lcom/squareup/picasso/ContentStreamBitmapHunter;->decode(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
