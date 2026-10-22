.class Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;
.super Ljava/lang/Object;
.source "ContentDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->initViews()V
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

    .line 686
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, ""

    .line 689
    iget-object v2, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 690
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v4

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v5

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getParentCatId()I

    move-result v6

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    new-instance v1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v2, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getUserId()I

    move-result v8

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTimeForLogs()Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$700(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)I

    move-result v12

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v15

    const-string v16, "ContentID"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v13, "VIEWED"

    const/4 v14, 0x1

    invoke-virtual/range {v4 .. v16}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->insertContentLog(IIIILjava/lang/String;ZZILjava/lang/String;IILjava/lang/String;)V

    .line 691
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "downloadedNow"

    const-string v4, "isDownloaded"

    const-string v5, "parentCatId"

    const-string v6, "contentId"

    const/4 v7, 0x0

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v8, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    new-instance v1, Landroid/content/Intent;

    iget-object v8, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-direct {v1, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 694
    iget-object v8, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v8

    const-string v9, "path"

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    iget-object v8, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v8}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v8

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    iget-object v6, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getParentCatId()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 697
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 698
    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 699
    iget-object v2, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 701
    :cond_0
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 703
    new-instance v1, Landroid/content/Intent;

    iget-object v3, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v3

    const-class v8, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-direct {v1, v3, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 704
    iget-object v3, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v3

    const-string v8, "url"

    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    iget-object v3, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v3

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 706
    iget-object v3, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getParentCatId()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 708
    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 709
    new-instance v2, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v3, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PdaId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    iget-object v2, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 712
    :cond_1
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Please enable data connection"

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 715
    :cond_2
    iget-object v2, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v2

    const/4 v4, 0x4

    const-string v5, "MIME Type"

    if-ne v2, v4, :cond_6

    .line 716
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 718
    :try_start_0
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 719
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v4, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 720
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 721
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_3
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v4

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v5

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getParentCatId()I

    move-result v6

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    new-instance v1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v2, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getUserId()I

    move-result v8

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTimeForLogs()Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$700(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)I

    move-result v12

    const-string v13, "VIEWED"

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v15

    const-string v16, "ContentID"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v4 .. v16}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->insertContentLog(IIIILjava/lang/String;ZZILjava/lang/String;IILjava/lang/String;)V

    .line 724
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$1300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 740
    :catch_0
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "No Picture Viewer Installed"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 742
    :cond_4
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 743
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$1300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 761
    :cond_5
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$1300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Ljava/lang/String;)V

    .line 762
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Picture not downloaded"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 764
    :cond_6
    iget-object v2, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v2

    const/4 v4, 0x7

    if-ne v2, v4, :cond_8

    .line 765
    iget-object v2, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 767
    :try_start_1
    iget-object v2, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    iget-object v6, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 768
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v4

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v5

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getParentCatId()I

    move-result v6

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    new-instance v1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v2, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getUserId()I

    move-result v8

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTimeForLogs()Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$700(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)I

    move-result v12

    const-string v13, "VIEWED"

    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v15

    const-string v16, "ContentID"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v4 .. v16}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->insertContentLog(IIIILjava/lang/String;ZZILjava/lang/String;IILjava/lang/String;)V

    .line 770
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 771
    new-instance v2, Ljava/io/File;

    iget-object v4, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 772
    iget-object v4, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.conceptglobal.pmcdeepakfertilizers.provider"

    invoke-static {v4, v5, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 774
    const-string v4, "application/pdf"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 776
    iget-object v2, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 789
    :catch_1
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "No PDF Viewer Installed"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 804
    :cond_7
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "PDF not downloaded"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 806
    :cond_8
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    .line 807
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 808
    iget-object v1, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$1400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$1500(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method
