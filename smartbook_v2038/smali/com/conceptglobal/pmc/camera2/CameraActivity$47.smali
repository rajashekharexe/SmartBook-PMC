.class Lcom/conceptglobal/pmc/camera2/CameraActivity$47;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/camera2/CameraActivity;->setMediaRecorderInit(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

.field final synthetic val$isStoppedBeforeMaxLimit:Z

.field final synthetic val$isVideorecording:Z


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2884
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    iput-boolean p2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->val$isVideorecording:Z

    iput-boolean p3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->val$isStoppedBeforeMaxLimit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2888
    :try_start_0
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->val$isVideorecording:Z

    if-eqz v0, :cond_1

    .line 2890
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/Chronometer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 2891
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/Chronometer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 2893
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$3400(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    .line 2895
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->val$isStoppedBeforeMaxLimit:Z

    if-eqz v0, :cond_0

    .line 2896
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1400(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 2898
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1400(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 2899
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$3500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    .line 2914
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPhotoImagePath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2917
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$700(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 2918
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$400(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2919
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$400(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2920
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2921
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$600(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2923
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$100(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 2925
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPhotoImagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 2927
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1200(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2930
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2931
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "PMC POC"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/conceptglobal/pmc/camera2/CameraActivity$47$1;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$47$1;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$47;)V

    const-string v3, "ok"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2938
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2939
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method
