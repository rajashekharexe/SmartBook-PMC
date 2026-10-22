.class Lcom/conceptglobal/pmc/camera2/CameraActivity$14;
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

    .line 848
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 853
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "forThreeMinuteVideo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x10800ad

    .line 855
    const-string v3, "ok"

    const-string v4, "PMC POC"

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 859
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1100(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 860
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1100(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Z

    move-result v0

    invoke-virtual {p1, v0, v5}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->setMediaRecorderInit(ZZ)V

    goto/16 :goto_0

    .line 863
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1, v5}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1102(Lcom/conceptglobal/pmc/camera2/CameraActivity;Z)Z

    .line 864
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1200(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 868
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    const v0, 0x2bf20

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1300(Lcom/conceptglobal/pmc/camera2/CameraActivity;I)V

    .line 870
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1400(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/media/MediaRecorder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    .line 873
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/Chronometer;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/32 v7, 0x2bf20

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6}, Landroid/widget/Chronometer;->setBase(J)V

    .line 876
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/Chronometer;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 877
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/Chronometer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Chronometer;->start()V

    .line 878
    new-instance p1, Lcom/conceptglobal/pmc/camera2/CameraActivity$14$1;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$14$1;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$14;)V

    .line 890
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1400(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 895
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 896
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/camera2/CameraActivity$14$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$14$2;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$14;)V

    invoke-virtual {p1, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 903
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 904
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 911
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1100(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 912
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1100(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Z

    move-result v0

    invoke-virtual {p1, v0, v5}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->setMediaRecorderInit(ZZ)V

    goto/16 :goto_0

    .line 915
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1, v5}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1102(Lcom/conceptglobal/pmc/camera2/CameraActivity;Z)Z

    .line 916
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1200(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 917
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    const/16 v0, 0x7530

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1300(Lcom/conceptglobal/pmc/camera2/CameraActivity;I)V

    .line 919
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1400(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/media/MediaRecorder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    .line 921
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/Chronometer;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x7530

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6}, Landroid/widget/Chronometer;->setBase(J)V

    .line 922
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/Chronometer;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 923
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/Chronometer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Chronometer;->start()V

    .line 924
    new-instance p1, Lcom/conceptglobal/pmc/camera2/CameraActivity$14$3;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$14$3;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$14;)V

    .line 936
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1400(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 941
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 942
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/camera2/CameraActivity$14$4;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$14$4;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$14;)V

    invoke-virtual {p1, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 949
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 950
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method
