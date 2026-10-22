.class Lcom/conceptglobal/pmc/camera2/CameraActivity$ImageSaver;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/camera2/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageSaver"
.end annotation


# instance fields
.field private mCallback:Lcom/conceptglobal/pmc/camera2/ICallback;

.field private mCapturedImage:Landroid/media/Image;

.field private mContext:Landroid/content/Context;

.field private mFileImagePath:Ljava/lang/String;

.field private final mFilePath:Ljava/lang/String;

.field private mImageQuality:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/media/Image;Ljava/lang/String;Lcom/conceptglobal/pmc/camera2/ICallback;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 2477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2466
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$ImageSaver;->mFilePath:Ljava/lang/String;

    .line 2478
    iput-object p2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$ImageSaver;->mFileImagePath:Ljava/lang/String;

    .line 2479
    iput-object p3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$ImageSaver;->mCallback:Lcom/conceptglobal/pmc/camera2/ICallback;

    .line 2480
    iput-object p4, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$ImageSaver;->mContext:Landroid/content/Context;

    .line 2481
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$ImageSaver;->mCapturedImage:Landroid/media/Image;

    .line 2482
    iput-object p5, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$ImageSaver;->mImageQuality:Ljava/lang/String;

    .line 2483
    invoke-static {p2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$002(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2488
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$ImageSaver;->mCapturedImage:Landroid/media/Image;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2491
    :try_start_0
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2492
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v4, v3, [B

    .line 2493
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2495
    invoke-static {v4, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2503
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 2504
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd-M-yyyy hh:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2505
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 2512
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$ImageSaver;->mFileImagePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2513
    :try_start_1
    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$ImageSaver;->mImageQuality:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2515
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v4, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2525
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 2526
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v1

    .line 2519
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2520
    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$ImageSaver;->mCallback:Lcom/conceptglobal/pmc/camera2/ICallback;

    invoke-interface {v3, v0}, Lcom/conceptglobal/pmc/camera2/ICallback;->done(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    .line 2525
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 2526
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 2528
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2531
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$ImageSaver;->mCallback:Lcom/conceptglobal/pmc/camera2/ICallback;

    invoke-interface {v0, v1}, Lcom/conceptglobal/pmc/camera2/ICallback;->done(Ljava/lang/Exception;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v2, :cond_1

    .line 2525
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 2526
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    .line 2528
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2531
    :cond_1
    :goto_4
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$ImageSaver;->mCallback:Lcom/conceptglobal/pmc/camera2/ICallback;

    invoke-interface {v2, v1}, Lcom/conceptglobal/pmc/camera2/ICallback;->done(Ljava/lang/Exception;)V

    .line 2534
    throw v0

    :cond_2
    :goto_5
    return-void
.end method
