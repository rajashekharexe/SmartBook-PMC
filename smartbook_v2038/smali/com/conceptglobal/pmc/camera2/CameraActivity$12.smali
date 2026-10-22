.class Lcom/conceptglobal/pmc/camera2/CameraActivity$12;
.super Landroid/content/BroadcastReceiver;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/camera2/CameraActivity;
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

    .line 781
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$12;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 785
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$12;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$400(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 786
    const-string p1, "image"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 787
    iget-object p2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$12;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1000(Lcom/conceptglobal/pmc/camera2/CameraActivity;[B)V

    .line 789
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$12;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 790
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$12;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$600(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 793
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$12;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 794
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "PMC POC"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/conceptglobal/pmc/camera2/CameraActivity$12$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$12$1;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$12;)V

    const-string v1, "ok"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 801
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 802
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method
