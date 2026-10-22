.class Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "FilterActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 224
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->running:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$1;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 222
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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

    .line 227
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$500(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getCategorySelection(I)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 270
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->running:Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 222
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;",
            ">;)V"
        }
    .end annotation

    .line 238
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 239
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->running:Z

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 241
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$000(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->notifyItemRemoved(I)V

    .line 246
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$300(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 247
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "TESTIMONIALFILTERID"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 249
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 250
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 254
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$700(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$600(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 263
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$800(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)V

    .line 264
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method
