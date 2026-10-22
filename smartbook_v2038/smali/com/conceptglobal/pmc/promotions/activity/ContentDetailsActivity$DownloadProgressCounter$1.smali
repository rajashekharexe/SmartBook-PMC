.class Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter$1;
.super Ljava/lang/Object;
.source "ContentDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;

.field final synthetic val$bytesDownloadedSoFar:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1159
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;

    iput p2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter$1;->val$bytesDownloadedSoFar:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1162
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter$1;->val$bytesDownloadedSoFar:I

    int-to-long v0, v0

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->access$1900(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 1163
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

    .line 1164
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object v0

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setProgress(F)V

    return-void
.end method
