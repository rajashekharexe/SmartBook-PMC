.class Lcom/conceptglobal/pmc/camera2/CameraActivity$20;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
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

    .line 1199
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .line 1238
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1800(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1239
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 1240
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1902(Lcom/conceptglobal/pmc/camera2/CameraActivity;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1242
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1243
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "PMC POC"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/camera2/CameraActivity$20$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$20$2;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$20;)V

    const-string v2, "ok"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1250
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1251
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Camera2API"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :try_start_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1800(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1261
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 1262
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1902(Lcom/conceptglobal/pmc/camera2/CameraActivity;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 1263
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    if-eqz p1, :cond_0

    .line 1265
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1269
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1270
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "PMC POC"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$20$3;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$20;)V

    const-string v1, "ok"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1277
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1278
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .line 1207
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1800(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1208
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1902(Lcom/conceptglobal/pmc/camera2/CameraActivity;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 1209
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1402(Lcom/conceptglobal/pmc/camera2/CameraActivity;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 1211
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1100(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1212
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1300(Lcom/conceptglobal/pmc/camera2/CameraActivity;I)V

    .line 1213
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1400(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/media/MediaRecorder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    .line 1214
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/Chronometer;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 1215
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/Chronometer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 1216
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$1500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/Chronometer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Chronometer;->start()V

    goto :goto_0

    .line 1219
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$2000(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1222
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1223
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "PMC POC"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/camera2/CameraActivity$20$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$20$1;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity$20;)V

    const-string v2, "ok"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1230
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1231
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method
