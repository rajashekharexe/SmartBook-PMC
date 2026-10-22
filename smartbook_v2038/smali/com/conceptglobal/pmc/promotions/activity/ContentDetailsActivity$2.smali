.class Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;
.super Ljava/lang/Object;
.source "ContentDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->setListeners()V
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

    .line 289
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 296
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Available in local."

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 297
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 298
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_2

    .line 299
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$900(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 303
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/DeviceMemory;->getInternalFreeSpaceInMB()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    mul-long v4, v4, v2

    .line 304
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    iget-wide v6, p1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->NUM_BYTES_NEEDED_FOR_MY_APP:J

    cmp-long p1, v4, v6

    if-gez p1, :cond_3

    .line 305
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Available size is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "MB.\n minimum 500 MB is required to download data, please delete some files and try again."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$1000(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Ljava/lang/String;)V

    return-void

    .line 310
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    iget-wide v2, p1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->mIcsDownloadId:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_4

    .line 311
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->reset()V

    .line 312
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->startAnimating()V

    .line 313
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 314
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    iget-wide v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->mIcsDownloadId:J

    invoke-direct {p1, v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;J)V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->start()V

    return-void

    .line 317
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 318
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v1, v2, v3}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 325
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 326
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 327
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object p1, p1, v1

    .line 332
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->reset()V

    .line 333
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->startAnimating()V

    .line 334
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;->getInstance()Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    .line 335
    invoke-static {v6}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "download progress"

    const/4 v6, 0x0

    move-object v9, p1

    .line 334
    invoke-virtual/range {v3 .. v9}, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;->initclassicDownlaod(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->mIcsDownloadId:J

    .line 338
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    const-string v3, "Download started."

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 339
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->mediaPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentDeviceLocation(Ljava/lang/String;)V

    .line 340
    new-instance v1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    iget-wide v4, v4, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->mIcsDownloadId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v3

    invoke-virtual {v1, v0, p1, v3, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->InsertDownloadDetails(Ljava/lang/String;Ljava/lang/String;II)V

    .line 341
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$200(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "Downloaded in progress."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    iget-wide v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->mIcsDownloadId:J

    invoke-direct {p1, v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;J)V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->start()V

    goto :goto_1

    .line 442
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Please enable data connection"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
