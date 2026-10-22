.class Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "PhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/camera2/PhotoActivity;->takePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

.field final synthetic val$captureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/camera2/PhotoActivity;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;->val$captureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 333
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    const-string v0, "Capture Failed"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 309
    :try_start_0
    const-string v0, "AndroidCameraApiCameraDevice captureSession logic"

    const-string v1, "session captured"

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;->val$captureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/camera2/PhotoActivity$5$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity$5$1;-><init>(Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    .line 324
    invoke-static {v2}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->access$400(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)Landroid/os/Handler;

    move-result-object v2

    .line 310
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 326
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 327
    const-string v0, "AndroidCameraApi CameraPreview Update logic"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
