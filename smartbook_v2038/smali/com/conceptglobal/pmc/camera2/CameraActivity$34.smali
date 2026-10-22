.class Lcom/conceptglobal/pmc/camera2/CameraActivity$34;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/camera2/CameraActivity;->createCameraPreviewSession()V
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

    .line 2001
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$34;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 2031
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$34;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    const-string v0, "Failed"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$3000(Lcom/conceptglobal/pmc/camera2/CameraActivity;Ljava/lang/String;I)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 2006
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$34;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1900(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2011
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$34;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2502(Lcom/conceptglobal/pmc/camera2/CameraActivity;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 2016
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$34;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2600(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x4

    .line 2017
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2016
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2021
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$34;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2600(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2702(Lcom/conceptglobal/pmc/camera2/CameraActivity;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    .line 2022
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$34;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$34;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2700(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$34;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2800(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$34;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2900(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2024
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method
