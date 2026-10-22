.class Lcom/conceptglobal/pmc/camera2/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/camera2/CameraActivity;->discardImage()V
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

    .line 409
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 415
    const-string p1, "ok"

    const-string v0, "PMC POC"

    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->getFilesDir()Ljava/io/File;

    .line 419
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 420
    invoke-static {}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    .line 423
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 425
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->tempImageUri:Landroid/net/Uri;

    .line 427
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    sget-object v4, Lcom/conceptglobal/pmc/camera2/CameraActivity;->tempImageUri:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 430
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$200(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    .line 431
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$300(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    .line 433
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$400(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 435
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$600(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 437
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$700(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 439
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$802(Lcom/conceptglobal/pmc/camera2/CameraActivity;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 443
    :try_start_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 444
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/conceptglobal/pmc/camera2/CameraActivity$2$1;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$2$1;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$2;)V

    invoke-virtual {v1, p1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 451
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 452
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 455
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 456
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/camera2/CameraActivity$2$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$2$2;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$2;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 463
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 464
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void
.end method
