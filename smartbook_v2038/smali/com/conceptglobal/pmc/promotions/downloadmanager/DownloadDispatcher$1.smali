.class Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher$1;
.super Ljava/util/TimerTask;
.source "DownloadDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->attemptRetryOnTimeOutException(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;

.field final synthetic val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher$1;->this$0:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher$1;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher$1;->this$0:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher$1;->val$request:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;->access$000(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadDispatcher;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;Ljava/lang/String;)V

    return-void
.end method
