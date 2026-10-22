.class Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 486
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->running:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$1;)V
    .locals 0

    .line 484
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 484
    check-cast p1, [Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->doInBackground([Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;)Ljava/util/List;
    .locals 6
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

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$700(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->getContentIds()Ljava/lang/String;

    move-result-object v3

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->getContentTypes()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$600(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v1, v3, p1, v4, v5}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getAllPromotionContents(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 494
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$800(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 495
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_2

    .line 496
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$600(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v5, :cond_0

    .line 497
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getIsBanner()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getIsBanner()Ljava/lang/String;

    move-result-object p1

    const-string v3, "true"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 498
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$800(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 500
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$600(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 501
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x5

    if-ge v2, p1, :cond_1

    .line 502
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$800(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 507
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .line 530
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    .line 531
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->running:Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 484
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->onPostExecute(Ljava/util/List;)V

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

    .line 514
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 515
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->running:Z

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$400(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 517
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$400(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$400(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$400(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$400(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 519
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$900(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$400(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->notifyItemRemoved(I)V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$400(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 522
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$1000(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)V

    .line 523
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$1100(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)V

    .line 524
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method
