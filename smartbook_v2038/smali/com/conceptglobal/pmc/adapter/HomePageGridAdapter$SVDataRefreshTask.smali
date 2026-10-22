.class Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$SVDataRefreshTask;
.super Landroid/os/AsyncTask;
.source "HomePageGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SVDataRefreshTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field progressBar:Landroid/widget/ProgressBar;

.field refreshView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

.field tvCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$SVDataRefreshTask;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 750
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$SVDataRefreshTask;->refreshView:Landroid/widget/ImageView;

    .line 751
    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$SVDataRefreshTask;->progressBar:Landroid/widget/ProgressBar;

    .line 752
    iput-object p4, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$SVDataRefreshTask;->tvCount:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    .line 765
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$SVDataRefreshTask;->this$0:Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;

    iget p1, p1, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter;->svActityCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 744
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$SVDataRefreshTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .line 770
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 771
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$SVDataRefreshTask;->refreshView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 772
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$SVDataRefreshTask;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$SVDataRefreshTask;->tvCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 744
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$SVDataRefreshTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 757
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 758
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$SVDataRefreshTask;->refreshView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/HomePageGridAdapter$SVDataRefreshTask;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
