.class Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "ContentCategoryDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->running:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 102
    check-cast p1, [Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->doInBackground([Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;)Ljava/util/ArrayList;
    .locals 6
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

    const-string v0, "("

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$100(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$100(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$100(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$200(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 128
    :pswitch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$100(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)I

    move-result p1

    if-lez p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$400(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getInstance()Lcom/conceptglobal/pmc/promotions/common/Queries;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$100(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getFavouriteContents(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getFavouriteContents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$400(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getInstance()Lcom/conceptglobal/pmc/promotions/common/Queries;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$100(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getFavouriteContents(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getFavouriteContents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    .line 121
    :pswitch_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$100(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)I

    move-result p1

    if-lez p1, :cond_2

    .line 122
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$400(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getInstance()Lcom/conceptglobal/pmc/promotions/common/Queries;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$100(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getDownloadedContents(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getAllDownloadsContents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$400(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getInstance()Lcom/conceptglobal/pmc/promotions/common/Queries;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$100(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getDownloadedContents(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getAllDownloadsContents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_1
    move-object v1, p1

    goto :goto_2

    .line 118
    :pswitch_2
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$400(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v3

    const/4 v4, 0x0

    aget-object p1, p1, v4

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->getContentIds()Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)I

    move-result v2

    invoke-virtual {v3, p1, v0, v2, v4}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getAllPromotionContents(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCancelled()V
    .locals 1

    .line 150
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->running:Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->onPostExecute(Ljava/util/ArrayList;)V

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

    .line 143
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$502(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 145
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;->access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentCategoryDetailsFragment;)V

    return-void
.end method
