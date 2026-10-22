.class Lcom/conceptglobal/pmc/camera2/CameraActivity$21;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/camera2/CameraActivity;->showSnackBar(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$length:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1295
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$21;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$21;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$21;->val$text:Ljava/lang/String;

    iput p4, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$21;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1298
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$21;->val$activity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1299
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$21;->val$text:Ljava/lang/String;

    iget v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$21;->val$length:I

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method
