.class Lcom/conceptglobal/pmc/camera2/CameraActivity$16;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/camera2/CameraActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 994
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$16;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 999
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$16;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1700(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1001
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$16;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1002
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "PMC POC"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/camera2/CameraActivity$16$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$16$1;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$16;)V

    const-string v2, "ok"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1009
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1010
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method
