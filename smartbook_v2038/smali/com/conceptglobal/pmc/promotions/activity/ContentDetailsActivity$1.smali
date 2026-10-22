.class Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ContentDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 268
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DownloadKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 269
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v2, "LocalPath"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 270
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    iget-wide v2, v2, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->mIcsDownloadId:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    .line 271
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$200(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Downloaded,Available in local"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentDeviceLocation(Ljava/lang/String;)V

    .line 273
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setProgress(F)V

    .line 274
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 275
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    const-wide/16 v1, 0x0

    iput-wide v1, p2, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->mIcsDownloadId:J

    .line 276
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getIsSharable()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getIsSharable()Ljava/lang/String;

    move-result-object p2

    const-string v1, "true"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 277
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$500(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    :cond_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v0

    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v1

    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getParentCatId()I

    move-result v2

    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance p2, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getUserId()I

    move-result v4

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTimeForLogs()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$700(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)I

    move-result v8

    const-string v9, "DOWNLOADED"

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v11

    const-string v12, "ContentID"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v0 .. v12}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->insertContentLog(IIIILjava/lang/String;ZZILjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 282
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
