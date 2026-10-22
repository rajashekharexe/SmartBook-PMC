.class Lcom/conceptglobal/pmc/camera2/PhotoActivity$5$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "PhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$5$1;->this$1:Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 313
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 319
    const-string p1, "AndroidCameraApi capturelistner logic"

    const-string p2, "captured"

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$5$1;->this$1:Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;

    iget-object p1, p1, Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$5$1;->this$1:Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;

    iget-object p1, p1, Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 321
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$5$1;->this$1:Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;

    iget-object p1, p1, Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->createCameraPreview()V

    :cond_0
    return-void
.end method
