.class Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$1;
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


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$1;->this$1:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$1;->this$1:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->access$1000(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;)Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$1;->this$1:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->access$900(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->setLocalHTMLZIPURL(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$1;->this$1:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->access$1000(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;)Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$1;->this$1:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->access$1000(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;)Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getVersionNo()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->setDeviceVersionNo(I)V

    .line 460
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$1;->this$1:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->adapter:Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$1;->this$1:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->access$1000(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;)Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$1;->this$1:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->access$1100(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->updateAdapter(Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;I)V

    .line 461
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$1;->this$1:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    iget-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$1;->this$1:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->access$900(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter$1;->this$1:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->access$1000(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;)Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$400(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;Ljava/lang/String;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;)V

    return-void
.end method
