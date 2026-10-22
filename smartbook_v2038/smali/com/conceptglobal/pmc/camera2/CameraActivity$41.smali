.class Lcom/conceptglobal/pmc/camera2/CameraActivity$41;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/camera2/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/camera2/CameraActivity;->setReducedBitmap(Landroid/media/Image;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

.field final synthetic val$mCapturedImage:Landroid/media/Image;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;Landroid/media/Image;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2389
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$41;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$41;->val$mCapturedImage:Landroid/media/Image;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "onImageSavedCallback: error saving image: "

    .line 2395
    const-string v1, "Camera2API"

    if-nez p1, :cond_1

    .line 2396
    :try_start_0
    const-string p1, "onImageSavedCallback: image saved!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$41;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$802(Lcom/conceptglobal/pmc/camera2/CameraActivity;Z)Z

    .line 2401
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$41;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    const-class v2, Lcom/conceptglobal/pmc/camera2/ReadImage;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2402
    invoke-static {}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2403
    const-string v0, "fileNameOfImage"

    invoke-static {}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2405
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$41;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    const-string v2, "image not available in the storage"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2407
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$41;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2408
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$41;->val$mCapturedImage:Landroid/media/Image;

    if-eqz p1, :cond_2

    .line 2409
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto :goto_1

    .line 2413
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$41;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    const-string v0, "Error displaying image"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$3000(Lcom/conceptglobal/pmc/camera2/CameraActivity;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2418
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$41;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2419
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "PMC POC"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/camera2/CameraActivity$41$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$41$1;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$41;)V

    const-string v2, "ok"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2426
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2427
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_2
    :goto_1
    return-void
.end method
