.class Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$2;
.super Ljava/lang/Object;
.source "PackageOfPracticeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->showAlertDownloadDialog(Ljava/lang/String;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;ILandroid/widget/ProgressBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

.field final synthetic val$individualCropItemModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

.field final synthetic val$position:I

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;ILandroid/widget/ProgressBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$2;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$2;->val$individualCropItemModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    iput p3, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$2;->val$position:I

    iput-object p4, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$2;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 142
    iget-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$2;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;

    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$2;->val$individualCropItemModal:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

    iget v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$2;->val$position:I

    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$2;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-static {p2, v0, v1, v2, v1}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->access$300(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;ILandroid/widget/ProgressBar;I)V

    .line 143
    iget-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$2;->val$progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
