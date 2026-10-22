.class Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$3;
.super Ljava/lang/Object;
.source "FarmerSelectionRecyclerToDoAdapter_Expenses.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->downloadContent(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;)V
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$3;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)V
    .locals 2

    .line 739
    const-string v0, "download-"

    const-string v1, "Sucess---"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$3;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;->access$1800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;Landroid/net/Uri;)V

    return-void
.end method

.method public onDownloadFailed(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;ILjava/lang/String;)V
    .locals 0

    .line 745
    const-string p1, "download-"

    const-string p2, "Failed---"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProgress(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;JJI)V
    .locals 4

    .line 750
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

    .line 751
    div-long/2addr p4, p2

    return-void
.end method
