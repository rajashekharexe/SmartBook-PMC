.class Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$6;
.super Ljava/lang/Object;
.source "DownloadedContentViewAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->showDiscardAlert(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

.field final synthetic val$adapterPosition:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 812
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$6;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$6;->val$adapterPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 815
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$6;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$4100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$6;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$6;->val$adapterPosition:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result p2

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->updateContent(ILjava/lang/String;)V

    .line 816
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$6;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Ljava/util/List;

    move-result-object p2

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$6;->val$adapterPosition:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 817
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$6;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Ljava/util/List;

    move-result-object p2

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$6;->val$adapterPosition:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    .line 818
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "isDeleted"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter$6;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->access$4900(Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;)Lcom/conceptglobal/pmc/promotions/interfaces/OnVideoDelete;

    move-result-object p1

    invoke-interface {p1}, Lcom/conceptglobal/pmc/promotions/interfaces/OnVideoDelete;->onVideoDelete()V

    return-void
.end method
