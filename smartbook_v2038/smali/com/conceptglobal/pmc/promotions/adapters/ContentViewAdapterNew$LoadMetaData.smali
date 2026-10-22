.class public Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$LoadMetaData;
.super Landroid/os/AsyncTask;
.source "ContentViewAdapterNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadMetaData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

.field url:Ljava/lang/String;

.field viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$LoadMetaData;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 972
    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$LoadMetaData;->url:Ljava/lang/String;

    .line 973
    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$LoadMetaData;->viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;
    .locals 1

    .line 986
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$LoadMetaData;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$LoadMetaData;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$3500(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Ljava/lang/String;)Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 988
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 967
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$LoadMetaData;->doInBackground([Ljava/lang/String;)Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;)V
    .locals 2

    .line 995
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 996
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$LoadMetaData;->viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;->access$3400(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 998
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$LoadMetaData;->viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;->access$3600(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)Landroidx/cardview/widget/CardView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 1000
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$LoadMetaData;->viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;->access$3700(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$LoadMetaData;->viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;->access$3800(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 967
    check-cast p1, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$LoadMetaData;->onPostExecute(Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 978
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 979
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$LoadMetaData;->viewHolder:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;->access$3400(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
