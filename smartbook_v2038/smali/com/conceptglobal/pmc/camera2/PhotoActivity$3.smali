.class Lcom/conceptglobal/pmc/camera2/PhotoActivity$3;
.super Ljava/lang/Object;
.source "PhotoActivity.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/camera2/PhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$3;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private save([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$3;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->access$200(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 175
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 174
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method


# virtual methods
.method synthetic lambda$onImageAvailable$0$com-conceptglobal-pmc-camera2-PhotoActivity$3()V
    .locals 3

    .line 149
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$3;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    const-class v2, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$3;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->access$200(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imagePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$3;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    const/16 v2, 0x3f1

    invoke-virtual {v1, v0, v2}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$onImageAvailable$1$com-conceptglobal-pmc-camera2-PhotoActivity$3()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$3;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    const-string v1, "Image not saved properly"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 6

    .line 136
    const-string v0, "Error saving image"

    const-string v1, "AndroidCameraApi ImageReader on ImageAvailable logic"

    const-string v2, "AndroidCameraApi"

    const/4 v3, 0x0

    .line 138
    :try_start_0
    const-string v4, "AndroidCameraApi ImageReader logic"

    const-string v5, "ImageAvailable"

    invoke-static {v4, v5}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v3

    .line 140
    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v4, 0x0

    aget-object p1, p1, v4

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    new-array v4, v4, [B

    .line 142
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 144
    invoke-direct {p0, v4}, Lcom/conceptglobal/pmc/camera2/PhotoActivity$3;->save([B)V

    .line 147
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$3;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->access$200(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$3;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->access$200(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$3;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    new-instance v4, Lcom/conceptglobal/pmc/camera2/PhotoActivity$3$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity$3$$ExternalSyntheticLambda0;-><init>(Lcom/conceptglobal/pmc/camera2/PhotoActivity$3;)V

    invoke-virtual {p1, v4}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 154
    :cond_0
    const-string p1, "File is null or doesn\'t exist"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$3;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    new-instance v4, Lcom/conceptglobal/pmc/camera2/PhotoActivity$3$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity$3$$ExternalSyntheticLambda1;-><init>(Lcom/conceptglobal/pmc/camera2/PhotoActivity$3;)V

    invoke-virtual {p1, v4}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 166
    :try_start_1
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    const-string v0, "AndroidCameraApi After Capture  on ImageAvailable send to photoSaveActivity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v3, :cond_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 163
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v3, :cond_1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 161
    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 169
    :goto_1
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    :cond_1
    return-void

    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 170
    :cond_2
    throw p1
.end method
