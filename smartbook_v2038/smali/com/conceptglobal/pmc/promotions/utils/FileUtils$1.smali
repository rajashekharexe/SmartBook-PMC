.class Lcom/conceptglobal/pmc/promotions/utils/FileUtils$1;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/utils/FileUtils;->downloadThumnail(Landroid/content/Context;Lcom/conceptglobal/pmc/promotions/models/ContentMaster;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/conceptglobal/pmc/promotions/models/ContentMaster;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/utils/FileUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/utils/FileUtils$1;->val$contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V
    .locals 3

    .line 100
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 101
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDestinationURI()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocalThumbnail"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/utils/FileUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    .line 103
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/utils/FileUtils$1;->val$contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->updateContentMaster(ILandroid/content/ContentValues;)V

    .line 105
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/FileUtils$1;->val$contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getDestinationURI()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentDeviceLocation(Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProgress(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;JJI)V
    .locals 0

    return-void
.end method
