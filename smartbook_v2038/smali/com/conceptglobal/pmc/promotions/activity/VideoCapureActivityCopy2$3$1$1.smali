.class Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1;
.super Ljava/lang/Object;
.source "VideoCapureActivityCopy2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1;->this$2:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1;->this$2:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->hideLoader()V

    .line 400
    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    .line 401
    const-string v1, "imageId"

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1;->this$2:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->access$1000(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/Data$Builder;->putLong(Ljava/lang/String;J)Landroidx/work/Data$Builder;

    .line 402
    const-string v1, "videoFile"

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1;->this$2:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->access$900(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    .line 403
    const-string v1, "compressedFile"

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1;->this$2:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->compressedFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    .line 404
    new-instance v1, Landroidx/work/Constraints$Builder;

    invoke-direct {v1}, Landroidx/work/Constraints$Builder;-><init>()V

    sget-object v2, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 405
    invoke-virtual {v1, v2}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    .line 407
    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v2, Lcom/conceptglobal/pmc/backgroundtask/VideoCompressionWorkManager;

    invoke-direct {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    const-string v2, "Sync"

    .line 409
    invoke-virtual {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object v1

    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 410
    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 412
    invoke-virtual {v0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest;

    .line 414
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1;Landroidx/work/OneTimeWorkRequest;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 426
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 427
    const-string v1, "ImagePath"

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1;->this$2:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->access$900(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 428
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1;->this$2:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    const/16 v2, 0xca

    invoke-virtual {v1, v2, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->setResult(ILandroid/content/Intent;)V

    .line 429
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1;->this$2:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 431
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
