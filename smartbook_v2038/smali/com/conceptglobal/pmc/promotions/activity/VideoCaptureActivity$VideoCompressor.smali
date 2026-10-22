.class Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;
.super Landroid/os/AsyncTask;
.source "VideoCaptureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoCompressor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)V
    .locals 1

    .line 501
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 502
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$1100(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 524
    invoke-static {}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->getInstance()Lcom/conceptglobal/pmc/promotions/video/MediaController;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$1200(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->compressedFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->convertVideo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 501
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 529
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 531
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 534
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 539
    const-string p1, "VideoCaptureActivity"

    const-string v0, "Compression successfully!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 501
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    .line 506
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 508
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Compressing video please wait"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 510
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 511
    const-string v0, "VideoCaptureActivity"

    const-string v1, "Start video compression"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$1300(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Before Compreesion file size : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$1200(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "MB\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".VideoCompressor/Compressed Videos/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VIDEO_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd_HHmmss"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 519
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->compressedFile:Ljava/io/File;

    return-void
.end method
