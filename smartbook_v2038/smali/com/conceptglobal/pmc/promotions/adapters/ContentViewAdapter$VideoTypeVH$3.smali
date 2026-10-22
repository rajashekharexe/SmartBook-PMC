.class Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$3;
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

    .line 432
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$3;->val$this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 435
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 436
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->access$700(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 438
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 439
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 440
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 441
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->access$700(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->startAnimating()V

    .line 442
    new-instance v1, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-direct {v1, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;-><init>(Landroid/net/Uri;)V

    new-instance p1, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;-><init>()V

    .line 444
    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setRetryPolicy(Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->mediaPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setDestinationURI(Landroid/net/Uri;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object p1

    sget-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->HIGH:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setPriority(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object p1

    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$3$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$3$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$3;)V

    .line 447
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setStatusListener(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object p1

    .line 507
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$3400(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->add(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)I

    goto :goto_0

    .line 533
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH$3;->this$1:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter$VideoTypeVH;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "Please enable data connection"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
