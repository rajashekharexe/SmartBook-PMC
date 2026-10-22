.class Lcom/conceptglobal/pmc/camera2/CameraActivity$VideoSaver;
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
    name = "VideoSaver"
.end annotation


# instance fields
.field private mCallback:Lcom/conceptglobal/pmc/camera2/ICallback;

.field private mContext:Landroid/content/Context;

.field private final mFile:Ljava/io/File;

.field private mImage:Landroid/media/Image;


# direct methods
.method constructor <init>(Landroid/media/Image;Ljava/io/File;Lcom/conceptglobal/pmc/camera2/ICallback;Landroid/content/Context;)V
    .locals 0

    .line 2669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2670
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$VideoSaver;->mImage:Landroid/media/Image;

    .line 2671
    iput-object p2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$VideoSaver;->mFile:Ljava/io/File;

    .line 2672
    iput-object p3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$VideoSaver;->mCallback:Lcom/conceptglobal/pmc/camera2/ICallback;

    .line 2673
    iput-object p4, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$VideoSaver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2679
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$VideoSaver;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_2

    .line 2680
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2681
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 2682
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 2685
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$VideoSaver;->mFile:Ljava/io/File;

    const-string v4, "temp_image.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2690
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2691
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2696
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$VideoSaver;->mImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 2699
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v3, v0

    .line 2693
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 2694
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$VideoSaver;->mCallback:Lcom/conceptglobal/pmc/camera2/ICallback;

    invoke-interface {v2, v1}, Lcom/conceptglobal/pmc/camera2/ICallback;->done(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2696
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$VideoSaver;->mImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    if-eqz v3, :cond_0

    .line 2699
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    .line 2701
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 2704
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$VideoSaver;->mCallback:Lcom/conceptglobal/pmc/camera2/ICallback;

    invoke-interface {v1, v0}, Lcom/conceptglobal/pmc/camera2/ICallback;->done(Ljava/lang/Exception;)V

    goto :goto_5

    :catchall_1
    move-exception v1

    .line 2696
    :goto_3
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$VideoSaver;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    if-eqz v3, :cond_1

    .line 2699
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    .line 2701
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2704
    :cond_1
    :goto_4
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$VideoSaver;->mCallback:Lcom/conceptglobal/pmc/camera2/ICallback;

    invoke-interface {v2, v0}, Lcom/conceptglobal/pmc/camera2/ICallback;->done(Ljava/lang/Exception;)V

    .line 2707
    throw v1

    :cond_2
    :goto_5
    return-void
.end method
