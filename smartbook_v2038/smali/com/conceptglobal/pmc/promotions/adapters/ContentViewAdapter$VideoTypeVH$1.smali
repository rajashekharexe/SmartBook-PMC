.class Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;
.super Ljava/lang/Object;
.source "ContentViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 387
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 390
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "downloadedNow"

    const-string v1, "isDownloaded"

    const-string v2, "parentCatId"

    const-string v3, "contentId"

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/File;

    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object v5, v5, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->getAdapterPosition()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 392
    new-instance p1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object v5, v5, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-direct {p1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object v5, v5, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->getAdapterPosition()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "path"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object v5, v5, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->getAdapterPosition()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v5

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object v3, v3, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->getAdapterPosition()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getParentCatId()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 396
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 397
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 398
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 400
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 402
    new-instance p1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object v5, v5, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-direct {p1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object v5, v5, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->getAdapterPosition()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object v5, v5, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->getAdapterPosition()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v5

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object v3, v3, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->getAdapterPosition()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getParentCatId()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 407
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    new-instance v0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdaId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 411
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Please enable data connection"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
