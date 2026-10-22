.class Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "FilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;
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
        "Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;",
        ">;>;"
    }
.end annotation


# instance fields
.field private running:Z

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 147
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->running:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$1;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 145
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getCategorySelection(I)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 177
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->running:Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 145
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;",
            ">;)V"
        }
    .end annotation

    .line 161
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 162
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->running:Z

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 164
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$000(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->notifyItemRemoved(I)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$500(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity;)V

    .line 171
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method
