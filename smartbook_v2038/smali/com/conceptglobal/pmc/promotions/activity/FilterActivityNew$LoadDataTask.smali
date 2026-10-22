.class Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "FilterActivityNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 179
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->running:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$1;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 177
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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

    .line 182
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$500(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getCategorySelection(I)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 220
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->running:Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 177
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;",
            ">;)V"
        }
    .end annotation

    .line 193
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 194
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->running:Z

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 196
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$000(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->notifyItemRemoved(I)V

    .line 201
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$700(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 202
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 203
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v3, "TSTFilterIds"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    .line 204
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    .line 205
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$800(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$900(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)V

    .line 214
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method
