.class Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
        ">;>;"
    }
.end annotation


# instance fields
.field private running:Z

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 235
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->running:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$1;)V
    .locals 0

    .line 233
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 233
    check-cast p1, [Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->doInBackground([Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$200(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getInstance()Lcom/conceptglobal/pmc/promotions/common/Queries;

    move-result-object v2

    const/4 v3, 0x0

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->getContentIds()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)I

    move-result v6

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)I

    move-result v7

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$900(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)I

    move-result v8

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getSearchContentQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getContents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 245
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .line 272
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->running:Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 233
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;)V"
        }
    .end annotation

    .line 252
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 253
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$1000(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$1000(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$1000(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 257
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$1100(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->notifyItemRemoved(I)V

    .line 258
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$1100(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->notifyDataSetChanged()V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$402(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;I)I

    .line 261
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$1000(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 262
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$1000(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 263
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->isLoading:Z

    .line 264
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;->access$1200(Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;)V

    goto :goto_0

    .line 266
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SearchActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SearchActivity;

    const-string v0, "No items available in given search."

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
