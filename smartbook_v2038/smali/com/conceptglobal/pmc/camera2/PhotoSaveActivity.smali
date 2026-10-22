.class public Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PhotoSaveActivity.java"


# static fields
.field private static REQUEST_STORAGE:I = 0x65

.field private static final TAG:Ljava/lang/String; = "PhotoSaveActivity"


# instance fields
.field private bitmapdata:[B

.field private tvRetake:Landroid/widget/TextView;

.field private tvSave:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getRealPathFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 284
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 285
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 289
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 290
    const-string p1, "_data"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 291
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private saveReceivedImage(Landroid/graphics/Bitmap;)V
    .locals 5

    const-string v0, "Save File ::: "

    .line 136
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "compressImg_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 140
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x32

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 141
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 142
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    const-string v0, "PhotoSaveActivity Image saving "

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setListeners()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->tvRetake:Landroid/widget/TextView;

    new-instance v1, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity$1;-><init>(Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->tvSave:Landroid/widget/TextView;

    new-instance v1, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity$2;-><init>(Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    .line 297
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 298
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

    .line 302
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 303
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
    .locals 23

    move-object/from16 v1, p0

    .line 169
    const-string v2, "PhotoSaveActivity Image compression doing outputfile"

    const-string v3, "EXIF"

    const-string v4, "PhotoSaveActivity"

    .line 0
    const-string v5, "Exif: "

    const-string v6, "size is:::::::::::::"

    .line 169
    invoke-direct/range {p0 .. p1}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->getRealPathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 172
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 174
    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 176
    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 177
    iget v11, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 182
    div-int v12, v11, v10

    int-to-float v12, v12

    int-to-float v13, v10

    const/high16 v14, 0x444c0000    # 816.0f

    const/high16 v15, 0x44190000    # 612.0f

    cmpl-float v16, v13, v14

    if-gtz v16, :cond_0

    int-to-float v0, v11

    cmpl-float v0, v0, v15

    if-lez v0, :cond_3

    :cond_0
    const/high16 v0, 0x3f400000    # 0.75f

    cmpg-float v10, v12, v0

    if-gez v10, :cond_1

    div-float v0, v14, v13

    int-to-float v10, v11

    mul-float v0, v0, v10

    float-to-int v11, v0

    float-to-int v10, v14

    goto :goto_1

    :cond_1
    cmpl-float v0, v12, v0

    if-lez v0, :cond_2

    int-to-float v0, v11

    div-float v0, v15, v0

    mul-float v0, v0, v13

    float-to-int v10, v0

    goto :goto_0

    :cond_2
    float-to-int v10, v14

    :goto_0
    float-to-int v11, v15

    .line 200
    :cond_3
    :goto_1
    invoke-virtual {v1, v8, v11, v10}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v12, 0x0

    .line 201
    iput-boolean v12, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 202
    iput-boolean v12, v8, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 204
    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const/16 v0, 0x4000

    .line 205
    new-array v0, v0, [B

    iput-object v0, v8, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 206
    const-string v13, "PhotoSaveActivity Converting actual image size to bitmap size using BitmapFactory.Options "

    const-string v14, "Converting original to sizedBitmap"

    invoke-static {v13, v14}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v15, 0x64

    .line 209
    :try_start_0
    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 212
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v9, v12, v15, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 213
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->bitmapdata:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 215
    :try_start_2
    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    :goto_2
    invoke-static {v13, v14}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 222
    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    const/4 v2, 0x0

    .line 226
    :try_start_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 227
    invoke-static {v13, v14}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 230
    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    int-to-float v0, v11

    .line 233
    iget v11, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v11, v11

    div-float v11, v0, v11

    int-to-float v10, v10

    .line 234
    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v8, v8

    div-float v8, v10, v8

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v0, v12

    div-float/2addr v10, v12

    .line 238
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 239
    invoke-virtual {v12, v11, v8, v0, v10}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 241
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 242
    invoke-virtual {v8, v12}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 243
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    const/4 v12, 0x2

    div-int/2addr v11, v12

    int-to-float v11, v11

    sub-float/2addr v0, v11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/2addr v11, v12

    int-to-float v11, v11

    sub-float/2addr v10, v11

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, v9, v0, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 246
    :try_start_4
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v7}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 248
    const-string v8, "Orientation"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 249
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/4 v9, 0x6

    if-ne v0, v9, :cond_4

    const/high16 v9, 0x42b40000    # 90.0f

    .line 252
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 253
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_4
    const/4 v9, 0x3

    if-ne v0, v9, :cond_5

    const/high16 v9, 0x43340000    # 180.0f

    .line 255
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 256
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    const/16 v9, 0x8

    if-ne v0, v9, :cond_6

    const/high16 v9, 0x43870000    # 270.0f

    .line 258
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 259
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_6
    :goto_5
    const-string v0, "PhotoSaveActivity Converting ScaledBitmap orientation"

    const-string v3, "Orientation Changes."

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    const/16 v22, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v2

    move-object/from16 v21, v8

    invoke-static/range {v16 .. v22}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    .line 265
    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    :goto_6
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 272
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v3, v15, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 273
    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->sizeOf(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 274
    const-string v2, "PhotoSaveActivity finally bitmap saving in external dir"

    const-string v3, "Saving the Final Bitmap"

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    .line 277
    invoke-static {v4, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    return-object v7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0035

    .line 55
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->setContentView(I)V

    const p1, 0x7f0904be

    .line 57
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->tvRetake:Landroid/widget/TextView;

    const p1, 0x7f0904ca

    .line 58
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->tvSave:Landroid/widget/TextView;

    .line 59
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->setListeners()V

    .line 60
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->senddata()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 155
    sget p2, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->REQUEST_STORAGE:I

    if-ne p1, p2, :cond_1

    .line 156
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 159
    const-string p1, "test"

    const-string p2, "User interaction was cancelled."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 160
    aget p1, p3, p1

    :cond_1
    :goto_0
    return-void
.end method

.method senddata()V
    .locals 4

    const-string v0, "File Saved ::::::::::::: "

    .line 67
    :try_start_0
    const-string v1, "PhotoSaveActivity Captured image send for  compression"

    const-string v2, "After captureing image"

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "imagePath"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->compressImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v0, "PhotoSaveActivity campressed bitmapImagedata"

    const-string v2, "compressed image with filepath send to pictureReporting."

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 93
    invoke-virtual {p0, v1, v0}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->setResult(ILandroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    const-string v1, "PhotoSaveActivity senddata to pictureReporting screen"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected sizeOf(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 320
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    return p1
.end method
