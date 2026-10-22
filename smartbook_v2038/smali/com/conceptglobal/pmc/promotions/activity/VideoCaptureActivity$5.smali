.class Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$5;
.super Ljava/lang/Object;
.source "VideoCaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 310
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$1000(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 312
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$1000(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->deleteImage(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 314
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$1100(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_imageCantBeDelToast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 315
    const-string v0, "VideoCaptureActivity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$5;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->onBackPressed()V

    return-void
.end method
