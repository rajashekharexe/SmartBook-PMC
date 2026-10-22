.class Lcom/conceptglobal/pmc/camera2/CameraActivity$40;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/camera2/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    .locals 0

    .line 2237
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$40;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 4

    .line 2243
    const-string v0, "Camera2API"

    .line 0
    const-string v1, "onImageAvailable: captured image height: "

    const-string v2, "onImageAvailable: captured image width: "

    .line 2243
    :try_start_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$40;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$800(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2246
    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$40;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$3102(Lcom/conceptglobal/pmc/camera2/CameraActivity;Landroid/media/Image;)Landroid/media/Image;

    .line 2263
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$40;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$3100(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$40;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$3100(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/media/Image;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$40;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$3100(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/media/Image;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$40;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageResolution:Ljava/lang/String;

    const-string v0, "[*]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2269
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 2270
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2273
    new-instance v1, Lcom/conceptglobal/pmc/camera2/ReducePixelImage;

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$40;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$3100(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/media/Image;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$40;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {v1, v2, v0, p1, v3}, Lcom/conceptglobal/pmc/camera2/ReducePixelImage;-><init>(Landroid/media/Image;IILcom/conceptglobal/pmc/camera2/IBitmapConnector;)V

    .line 2276
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$40;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2900(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2278
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$40;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$3200(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2283
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$40;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2284
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "PMC POC"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/camera2/CameraActivity$40$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$40$1;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$40;)V

    const-string v2, "ok"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2291
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2292
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void
.end method
