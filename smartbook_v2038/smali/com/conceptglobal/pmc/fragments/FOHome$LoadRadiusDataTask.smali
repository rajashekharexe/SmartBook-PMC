.class Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;
.super Landroid/os/AsyncTask;
.source "FOHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/FOHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadRadiusDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FOHome;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/FOHome;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/FOHome;Lcom/conceptglobal/pmc/fragments/FOHome$1;)V
    .locals 0

    .line 511
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;-><init>(Lcom/conceptglobal/pmc/fragments/FOHome;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 511
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 522
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->disPlaySVRadiusData()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 511
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 528
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$100(Lcom/conceptglobal/pmc/fragments/FOHome;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 529
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$500(Lcom/conceptglobal/pmc/fragments/FOHome;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 515
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 516
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$100(Lcom/conceptglobal/pmc/fragments/FOHome;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$200(Lcom/conceptglobal/pmc/fragments/FOHome;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Filtering data.."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
