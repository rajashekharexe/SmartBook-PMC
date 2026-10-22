.class Lcom/conceptglobal/pmc/camera2/PhotoActivity$4;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "PhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/camera2/PhotoActivity;->createCameraPreview()V
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

    .line 248
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$4;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 259
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$4;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    const-string v0, "Preview failed"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 251
    const-string v0, "AndroidCameraApiCameraDevice captureSession logic"

    const-string v1, "session captured"

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$4;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->access$100(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$4;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->access$302(Lcom/conceptglobal/pmc/camera2/PhotoActivity;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 254
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$4;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->updatePreview()V

    return-void
.end method
