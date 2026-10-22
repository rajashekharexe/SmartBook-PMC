.class Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;
.super Ljava/lang/Thread;
.source "PackageOfPracticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadProgressCounter"
.end annotation


# instance fields
.field private cursor:Landroid/database/Cursor;

.field private final downloadId:J

.field private individualCropModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

.field private lastBytesDownloadedSoFar:I

.field mgr:Landroid/app/DownloadManager;

.field private pos:I

.field private final query:Landroid/app/DownloadManager$Query;

.field final synthetic this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

.field private totalBytes:I

.field private unzipPath:Ljava/lang/String;

.field private view:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;JLcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;Ljava/lang/String;Landroid/widget/ProgressBar;I)V
    .locals 2

    .line 422
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 420
    invoke-static {p1}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$800(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->mgr:Landroid/app/DownloadManager;

    .line 423
    iput-wide p2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->downloadId:J

    .line 424
    new-instance p1, Landroid/app/DownloadManager$Query;

    invoke-direct {p1}, Landroid/app/DownloadManager$Query;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->query:Landroid/app/DownloadManager$Query;

    const/4 v0, 0x1

    .line 425
    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p2, v0, v1

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 426
    iput-object p6, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->view:Landroid/widget/ProgressBar;

    .line 427
    iput-object p4, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->individualCropModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    .line 428
    iput-object p5, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->unzipPath:Ljava/lang/String;

    .line 429
    iput p7, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->pos:I

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;)Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->individualCropModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;)I
    .locals 0

    .line 408
    iget p0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->pos:I

    return p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;)I
    .locals 0

    .line 408
    iget p0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->totalBytes:I

    return p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;)Landroid/widget/ProgressBar;
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->view:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;)Ljava/lang/String;
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->unzipPath:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    const-wide/16 v1, 0x12c

    .line 438
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 439
    iget-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->mgr:Landroid/app/DownloadManager;

    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->query:Landroid/app/DownloadManager$Query;

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->cursor:Landroid/database/Cursor;

    .line 440
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 443
    iget v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->totalBytes:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "---"

    const-string v3, "DownloadLog"

    if-gtz v1, :cond_0

    .line 444
    :try_start_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->cursor:Landroid/database/Cursor;

    const-string v4, "total_size"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->totalBytes:I

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "totalBytes--->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->totalBytes:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->cursor:Landroid/database/Cursor;

    const-string v4, "bytes_so_far"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytesDownloadedSoFar--->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->cursor:Landroid/database/Cursor;

    const-string v4, "status"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    .line 452
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$002(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;Z)Z

    .line 453
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->unzipPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->individualCropModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getVersionNo()I

    move-result v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->individualCropModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getPopID()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->updateCropDetails(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    new-instance v4, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$1;

    invoke-direct {v4, p0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$1;-><init>(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;)V

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status--->false---"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 468
    :cond_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    new-instance v3, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$2;

    invoke-direct {v3, p0, v1}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$2;-><init>(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;I)V

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 481
    :cond_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_3
    return-void
.end method
