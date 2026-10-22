.class Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "ContentDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)V
    .locals 0

    .line 979
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 981
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;->running:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;)V
    .locals 0

    .line 979
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 979
    check-cast p1, [Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;->doInBackground([Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;)Ljava/util/ArrayList;
    .locals 5
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

    .line 985
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 987
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getInstance()Lcom/conceptglobal/pmc/promotions/common/Queries;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    iget-object v3, v3, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->keysList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$700(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getRelatedContentQuery(Ljava/lang/String;Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getContents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 990
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 1004
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    .line 1005
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;->running:Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 979
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;)V"
        }
    .end annotation

    .line 997
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 998
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$1602(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 999
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$1700(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)V

    return-void
.end method
