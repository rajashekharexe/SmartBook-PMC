.class Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$1;
.super Ljava/lang/Object;
.source "PackageOfPracticeActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$1;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public individualCropClick(Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;ILandroid/widget/ProgressBar;Z)V
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$1;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$000(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 106
    iget-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$1;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    const-string p2, "Try later  download is inprogress."

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$1;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$100(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getPopID()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getIndividualCropDetails(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIndividualCropDetails(Ljava/lang/String;)Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    move-result-object v2

    iput-object v2, v0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->individualCropItem:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    .line 110
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$1;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->individualCropItem:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getLocalHTMLZIPURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$1;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->individualCropItem:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getLocalHTMLZIPURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$1;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->individualCropItem:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getVersionNo()I

    move-result v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$1;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    iget-object v2, v2, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->individualCropItem:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getDeviceVersionNo()I

    move-result v2

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    iget-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$1;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getLocalHTMLZIPURL()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$400(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;Ljava/lang/String;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;)V

    goto :goto_1

    .line 112
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$1;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p4, :cond_3

    .line 114
    iget-object p4, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$1;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    const-string v0, "Are you sure you want to download this file?"

    invoke-static {p4, v0, p1, p2, p3}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$200(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;Ljava/lang/String;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;ILandroid/widget/ProgressBar;)V

    goto :goto_1

    .line 116
    :cond_3
    iget-object p4, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$1;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-static {p4, p1, p2, p3, p2}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$300(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;ILandroid/widget/ProgressBar;I)V

    const/4 p1, 0x0

    .line 117
    invoke-virtual {p3, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 121
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$1;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1000fb

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
