.class Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/MainActivity;
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
        "Ljava/util/List<",
        "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
        ">;>;"
    }
.end annotation


# instance fields
.field private running:Z

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 360
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->running:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;Lcom/conceptglobal/pmc/promotions/activity/MainActivity$1;)V
    .locals 0

    .line 358
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 358
    check-cast p1, [Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->doInBackground([Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;",
            ")",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$700(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->getContentIds()Ljava/lang/String;

    move-result-object v3

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->getContentTypes()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)I

    move-result v4

    invoke-virtual {v1, v3, p1, v4, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getAllPromotionContents(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 369
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .line 391
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    .line 392
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->running:Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 358
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->onPostExecute(Ljava/util/List;)V

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

    .line 376
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 377
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->running:Z

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 379
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapter;->notifyItemRemoved(I)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 384
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/MainActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/MainActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/MainActivity;->access$900(Lcom/conceptglobal/pmc/promotions/activity/MainActivity;)V

    .line 385
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method
