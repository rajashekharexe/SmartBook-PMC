.class Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "DisplayContentsActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 746
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$LoadDataTask;->running:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 744
    check-cast p1, [Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$LoadDataTask;->doInBackground([Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;)Ljava/util/List;

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

    .line 750
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 753
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->access$600(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->getContentIds()Ljava/lang/String;

    move-result-object v3

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->getContentTypes()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->access$500(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)I

    move-result v4

    invoke-virtual {v1, v3, p1, v4, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getAllPromotionContents(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 755
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .line 777
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    .line 778
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$LoadDataTask;->running:Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 744
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$LoadDataTask;->onPostExecute(Ljava/util/List;)V

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

    .line 762
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 763
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$LoadDataTask;->running:Z

    if-eqz v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->access$300(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 765
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->access$300(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->access$300(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->access$300(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->access$300(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 767
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->access$700(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->access$300(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->notifyItemRemoved(I)V

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->access$300(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 770
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->access$800(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)V

    .line 771
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method
