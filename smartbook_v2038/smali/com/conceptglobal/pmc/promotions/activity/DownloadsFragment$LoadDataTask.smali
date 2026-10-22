.class Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "DownloadsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;->running:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$1;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 175
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
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

    .line 182
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->access$200(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getInstance()Lcom/conceptglobal/pmc/promotions/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->access$100(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getDownloadedContents(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getCategorywiseDownloadsContents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->access$002(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 186
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->access$200(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getInstance()Lcom/conceptglobal/pmc/promotions/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->access$100(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getDownloadedContents(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getCategorywiseDownloadsContents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->access$302(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 187
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->access$200(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getInstance()Lcom/conceptglobal/pmc/promotions/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->access$100(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getDownloadedContents(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getCategorywiseDownloadsContents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->access$402(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 188
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->access$200(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getInstance()Lcom/conceptglobal/pmc/promotions/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->access$100(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getDownloadedContents(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getCategorywiseDownloadsContents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->access$502(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 215
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;->running:Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 175
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;)V"
        }
    .end annotation

    .line 197
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 198
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;->running:Z

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;->access$600(Lcom/conceptglobal/pmc/promotions/activity/DownloadsFragment;)V

    :cond_0
    return-void
.end method
