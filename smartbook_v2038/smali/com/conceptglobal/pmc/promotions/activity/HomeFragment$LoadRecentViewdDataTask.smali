.class Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadRecentViewdDataTask;
.super Landroid/os/AsyncTask;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadRecentViewdDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
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

    .line 591
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadRecentViewdDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 593
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadRecentViewdDataTask;->running:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$1;)V
    .locals 0

    .line 591
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadRecentViewdDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 591
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadRecentViewdDataTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation

    .line 597
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadRecentViewdDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$700(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getInstance()Lcom/conceptglobal/pmc/promotions/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadRecentViewdDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$600(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getContentsRecentlyViewd(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getContents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 602
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 615
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    .line 616
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadRecentViewdDataTask;->running:Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 591
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadRecentViewdDataTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;)V"
        }
    .end annotation

    .line 609
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 610
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$LoadRecentViewdDataTask;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$1300(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;Ljava/util/ArrayList;)V

    return-void
.end method
