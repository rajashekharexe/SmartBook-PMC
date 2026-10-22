.class Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;
.super Ljava/lang/Object;
.source "PackageOfPracticeActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->downloadLatestHtmlFiles(Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;ILandroid/widget/ProgressBar;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

.field final synthetic val$adapterItemPosition:I

.field final synthetic val$individualCropModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

.field final synthetic val$unzipPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;Ljava/lang/String;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->val$unzipPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->val$individualCropModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    iput p4, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->val$adapterItemPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCompleted()V
    .locals 15

    .line 267
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$500(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$500(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 271
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->val$unzipPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->val$individualCropModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getVersionNo()I

    move-result v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->val$individualCropModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getPopID()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->updateCropDetails(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 272
    new-instance v2, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-direct {v2, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    .line 273
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->val$individualCropModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getPopID()I

    move-result v3

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getUserId()I

    move-result v6

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTimeForLogs()Ljava/lang/String;

    move-result-object v7

    const-string v11, "DOWNLOADED"

    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->val$individualCropModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getPopID()I

    move-result v13

    const-string v14, "POPID"

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v12, 0x1

    invoke-virtual/range {v2 .. v14}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->insertContentLog(IIIILjava/lang/String;ZZILjava/lang/String;IILjava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->val$individualCropModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    iget-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->val$unzipPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->setLocalHTMLZIPURL(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->val$individualCropModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getVersionNo()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->setDeviceVersionNo(I)V

    .line 276
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->adapter:Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->val$individualCropModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    iget v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->val$adapterItemPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->updateAdapter(Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;I)V

    .line 277
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    iget-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->val$unzipPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->val$individualCropModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    invoke-static {v0, v1, v2}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$400(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;Ljava/lang/String;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 279
    invoke-static {}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$600()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :goto_0
    return-void
.end method

.method public onDownloadFailed()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$500(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

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

    .line 261
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$500(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 262
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$500(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
