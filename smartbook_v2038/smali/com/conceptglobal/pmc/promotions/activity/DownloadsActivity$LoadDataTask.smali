.class Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "DownloadsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
        ">;>;"
    }
.end annotation


# instance fields
.field private running:Z

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->running:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$1;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 124
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->access$100(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getInstance()Lcom/conceptglobal/pmc/promotions/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->access$000(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getDownloadedContents(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getAllDownloadsContents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 160
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->running:Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 124
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;)V"
        }
    .end annotation

    .line 143
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 144
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->running:Z

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->access$200(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->access$200(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->access$200(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->access$200(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->access$200(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;)Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->access$200(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/DownloadedContentViewAdapter;->notifyItemRemoved(I)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->access$200(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/DownloadsActivity;)V

    .line 154
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method
