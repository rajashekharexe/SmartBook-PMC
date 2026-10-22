.class Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$3;
.super Ljava/lang/Object;
.source "DownloadedContentViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

.field final synthetic val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 519
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$3;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 522
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 524
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    const-string v1, "com.conceptglobal.pmc.fileprovider"

    .line 526
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    iget-object v2, v2, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    iget-object v4, v4, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->getAdapterPosition()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 527
    const-string v2, "application/pdf"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 529
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "No PDF Viewer Installed"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 534
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$AttachementTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3300(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "PDF not downloaded"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
