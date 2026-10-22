.class Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "ContentCategoryDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity$LoadDataTask;->running:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity$1;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, [Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity$LoadDataTask;->doInBackground([Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;)Ljava/util/List;

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

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->access$200(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->getContentIds()Ljava/lang/String;

    move-result-object p1

    const-string v3, "1"

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->access$100(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;)I

    move-result v4

    invoke-virtual {v1, p1, v3, v4, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getAllPromotionContents(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .line 98
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity$LoadDataTask;->running:Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity$LoadDataTask;->onPostExecute(Ljava/util/List;)V

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

    .line 92
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 93
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsActivity;)V

    return-void
.end method
