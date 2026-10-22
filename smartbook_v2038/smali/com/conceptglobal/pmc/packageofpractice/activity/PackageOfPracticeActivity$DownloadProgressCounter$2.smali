.class Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$2;
.super Ljava/lang/Object;
.source "PackageOfPracticeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;

.field final synthetic val$bytesDownloadedSoFar:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 468
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$2;->this$1:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;

    iput p2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$2;->val$bytesDownloadedSoFar:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 471
    iget v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$2;->val$bytesDownloadedSoFar:I

    int-to-long v0, v0

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$2;->this$1:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->access$1200(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dl_progress--->"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "---"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DownloadLog"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$2;->this$1:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->access$1300(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$2;->this$1:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->access$1300(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
