.class Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$6;
.super Ljava/lang/Object;
.source "PackageOfPracticeActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->downloadLatestLibraryFilesFromServer(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

.field final synthetic val$popid:I

.field final synthetic val$unzipPath:Ljava/lang/String;

.field final synthetic val$version:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 358
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$6;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$6;->val$unzipPath:Ljava/lang/String;

    iput p3, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$6;->val$version:I

    iput p4, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$6;->val$popid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCompleted()V
    .locals 5

    .line 368
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$6;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$500(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$6;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$500(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 372
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$6;->val$unzipPath:Ljava/lang/String;

    iget v3, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$6;->val$version:I

    iget v4, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$6;->val$popid:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->updateLibraryDetails(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 374
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$600()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$6;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$700(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$6;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$700(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)V

    .line 377
    throw v0
.end method

.method public onDownloadFailed()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$6;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$500(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$6;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$500(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 0

    return-void
.end method

.method public onDownloadStarted()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$6;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$500(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 363
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$6;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$500(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
