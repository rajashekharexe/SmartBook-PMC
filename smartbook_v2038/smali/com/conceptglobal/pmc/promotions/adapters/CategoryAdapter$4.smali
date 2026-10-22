.class Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$4;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->downloadContent(Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

.field final synthetic val$button:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;ILcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 866
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$4;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$4;->val$pos:I

    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$4;->val$button:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V
    .locals 3

    .line 870
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$4;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$4;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$4;->val$pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDestinationURI()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->updateContent(ILjava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$4;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2000(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$4;->val$pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDestinationURI()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentDeviceLocation(Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V
    .locals 1

    .line 878
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$4;->val$button:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->reset()V

    .line 879
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$4;->val$button:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 880
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDestinationURI()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 881
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$4;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;->access$2200(Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter;)Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onProgress(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;JJI)V
    .locals 4

    .line 886
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v0, 0x400

    div-long v2, p4, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p6, "kb of "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v0, p2, v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p6, "kb"

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p6, "download-"

    invoke-static {p6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x64

    mul-long p4, p4, v0

    .line 887
    div-long/2addr p4, p2

    long-to-float p1, p4

    .line 888
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryAdapter$4;->val$button:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setProgress(F)V

    return-void
.end method
