.class Lcom/conceptglobal/pmc/camera2/CameraActivity$31;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/camera2/CameraActivity;->captureStillPicture()V
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

    .line 1890
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$31;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 1896
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$31;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2400(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    return-void
.end method
