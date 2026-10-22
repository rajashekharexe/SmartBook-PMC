.class Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;
.super Ljava/lang/Object;
.source "DownloadedContentViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 313
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->getAdapterPosition()I

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

    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    iget-object v5, v5, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->getAdapterPosition()I

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

    .line 314
    new-instance p1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    iget-object v5, v5, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-direct {p1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    iget-object v5, v5, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->getAdapterPosition()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "path"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    iget-object v5, v5, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->getAdapterPosition()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v5

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    iget-object v3, v3, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->getAdapterPosition()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getParentCatId()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 318
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 323
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 324
    new-instance p1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    iget-object v5, v5, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/conceptglobal/pmc/promotions/activity/VideoActivity;

    invoke-direct {p1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    iget-object v5, v5, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->getAdapterPosition()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    iget-object v5, v5, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->getAdapterPosition()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v5

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    iget-object v3, v3, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->getAdapterPosition()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getParentCatId()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 331
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 333
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH$1;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Please enable data connection"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
