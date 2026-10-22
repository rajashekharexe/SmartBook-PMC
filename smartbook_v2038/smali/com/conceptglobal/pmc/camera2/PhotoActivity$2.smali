.class Lcom/conceptglobal/pmc/camera2/PhotoActivity$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "PhotoActivity.java"


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

    .line 99
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 119
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 120
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->access$102(Lcom/conceptglobal/pmc/camera2/PhotoActivity;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 125
    iget-object p2, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->access$100(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 127
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->access$102(Lcom/conceptglobal/pmc/camera2/PhotoActivity;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 129
    :cond_0
    const-string p1, "AndroidCameraApiCamera State Callback logic"

    const-string p2, "onError"

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 104
    :try_start_0
    const-string v0, "AndroidCameraApi"

    const-string v1, "onOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v0, "AndroidCameraApiCamera State Callback logic"

    const-string v1, "Camera Opened"

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->access$102(Lcom/conceptglobal/pmc/camera2/PhotoActivity;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 107
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->createCameraPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    const-string v0, "AndroidCameraApi Camera onOpened"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
