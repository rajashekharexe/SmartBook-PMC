.class Lcom/conceptglobal/pmc/camera2/CameraActivity$14$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/camera2/CameraActivity$14;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$14;)V
    .locals 0

    .line 878
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14$1;->this$1:Lcom/conceptglobal/pmc/camera2/CameraActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    const/16 p1, 0x320

    if-ne p1, p2, :cond_0

    .line 883
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14$1;->this$1:Lcom/conceptglobal/pmc/camera2/CameraActivity$14;

    iget-object p1, p1, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    iget-object p2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14$1;->this$1:Lcom/conceptglobal/pmc/camera2/CameraActivity$14;

    iget-object p2, p2, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1100(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Z

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->setMediaRecorderInit(ZZ)V

    :cond_0
    return-void
.end method
