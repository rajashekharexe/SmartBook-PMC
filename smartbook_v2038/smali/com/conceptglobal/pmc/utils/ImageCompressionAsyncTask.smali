.class public Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;
.super Landroid/os/AsyncTask;
.source "ImageCompressionAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field imageView:Landroid/widget/ImageView;

.field listener:Lcom/conceptglobal/pmc/utils/CompressListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/conceptglobal/pmc/utils/CompressListener;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    return-void
.end method

.method private getRealPathFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 137
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 142
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 143
    const-string p1, "_data"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 144
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    .line 158
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 159
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p3, :cond_1

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v1, v0

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 163
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 164
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    mul-int p1, p1, v0

    int-to-float p1, p1

    mul-int p2, p2, p3

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    :goto_2
    mul-int p3, v1, v1

    int-to-float p3, p3

    div-float p3, p1, p3

    cmpl-float p3, p3, p2

    if-lez p3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return v1
.end method

.method public compressImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    .line 43
    const-string v1, "EXIF"

    .line 0
    const-string v2, "Exif: "

    .line 43
    invoke-direct/range {p0 .. p1}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;->getRealPathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 48
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 50
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 51
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 54
    div-int v8, v7, v6

    int-to-float v8, v8

    int-to-float v9, v6

    const/high16 v10, 0x441a0000    # 616.0f

    const/high16 v11, 0x43ce0000    # 412.0f

    cmpl-float v12, v9, v10

    if-gtz v12, :cond_1

    int-to-float v12, v7

    cmpl-float v12, v12, v11

    if-lez v12, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object/from16 v8, p0

    goto :goto_3

    :cond_1
    :goto_1
    const v6, 0x3f2b3885

    cmpg-float v12, v8, v6

    if-gez v12, :cond_2

    div-float v6, v10, v9

    int-to-float v7, v7

    mul-float v6, v6, v7

    float-to-int v7, v6

    float-to-int v6, v10

    goto :goto_0

    :cond_2
    cmpl-float v6, v8, v6

    if-lez v6, :cond_3

    int-to-float v6, v7

    div-float v6, v11, v6

    mul-float v6, v6, v9

    float-to-int v6, v6

    goto :goto_2

    :cond_3
    float-to-int v6, v10

    :goto_2
    float-to-int v7, v11

    goto :goto_0

    .line 73
    :goto_3
    invoke-virtual {v8, v4, v7, v6}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v9

    iput v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v9, 0x0

    .line 74
    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 75
    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 76
    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 77
    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const/16 v0, 0x4000

    .line 78
    new-array v0, v0, [B

    iput-object v0, v4, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 81
    :try_start_0
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v10, v0

    .line 83
    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 86
    :goto_4
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/4 v0, 0x0

    :goto_5
    move-object v15, v0

    int-to-float v0, v7

    .line 91
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v7, v7

    div-float v7, v0, v7

    int-to-float v6, v6

    .line 92
    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    div-float v4, v6, v4

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v0, v10

    div-float/2addr v6, v10

    .line 96
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    invoke-virtual {v10, v7, v4, v0, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 99
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 100
    invoke-virtual {v4, v10}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 101
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v10, 0x2

    div-int/2addr v7, v10

    int-to-float v7, v7

    sub-float/2addr v0, v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/2addr v7, v10

    int-to-float v7, v7

    sub-float/2addr v6, v7

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v10}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 104
    :try_start_2
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 106
    const-string v4, "Orientation"

    invoke-virtual {v0, v4, v9}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/4 v5, 0x6

    if-ne v0, v5, :cond_4

    const/high16 v5, 0x42b40000    # 90.0f

    .line 110
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_4
    const/4 v5, 0x3

    if-ne v0, v5, :cond_5

    const/high16 v5, 0x43340000    # 180.0f

    .line 113
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_5
    const/16 v5, 0x8

    if-ne v0, v5, :cond_6

    const/high16 v5, 0x43870000    # 270.0f

    .line 116
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_6
    :goto_6
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v16, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v10, v15

    move-object v1, v15

    move-object v15, v4

    :try_start_3
    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v1, v15

    .line 121
    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v15, v1

    .line 127
    :goto_8
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 128
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x28

    invoke-virtual {v15, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 36
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;->compressImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 151
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ImageCompressionAsyncTask;->listener:Lcom/conceptglobal/pmc/utils/CompressListener;

    invoke-interface {v0, p1}, Lcom/conceptglobal/pmc/utils/CompressListener;->onComprssCompleteListener(Ljava/lang/String;)V

    return-void
.end method
