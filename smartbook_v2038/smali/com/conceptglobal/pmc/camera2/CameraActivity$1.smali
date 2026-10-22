.class Lcom/conceptglobal/pmc/camera2/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/camera2/CameraActivity;->acceptImage()V
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

    .line 324
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$1;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 328
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$1;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "forThreeMinuteVideo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x1

    const-string v3, "unable to save the file buddy"

    const-string v4, "ok"

    if-ne p1, v0, :cond_1

    .line 331
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 335
    invoke-static {}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$1;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->setACopy(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 338
    const-string v2, "fileNameThreeMinuteVideo"

    invoke-static {}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v2, "fileNameThreeMinuteVideoCopy"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v0, "fromVideothubnail"

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$1;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    iget-object v2, v2, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoUpdate:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$1;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 345
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$1;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->finish()V

    goto/16 :goto_0

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$1;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 351
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$1;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 352
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/camera2/CameraActivity$1$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$1$1;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$1;)V

    invoke-virtual {p1, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 359
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 360
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 364
    :cond_1
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 366
    invoke-static {}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 368
    invoke-static {}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$1;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/CreateCopyFile;->setACopyFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 374
    const-string v0, "fileName"

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$1;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$100(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$1;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 379
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$1;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->finish()V

    goto :goto_0

    .line 381
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$1;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 385
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$1;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 386
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "PMC POC"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/camera2/CameraActivity$1$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$1$2;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$1;)V

    invoke-virtual {p1, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 393
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 394
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method
