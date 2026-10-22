.class Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "FOHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/FOHome;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FOHome;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/FOHome;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/FOHome;Lcom/conceptglobal/pmc/fragments/FOHome$1;)V
    .locals 0

    .line 476
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/fragments/FOHome;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 476
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 487
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$300(Lcom/conceptglobal/pmc/fragments/FOHome;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$300(Lcom/conceptglobal/pmc/fragments/FOHome;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Survey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 488
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$400(Lcom/conceptglobal/pmc/fragments/FOHome;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 476
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    .line 496
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$100(Lcom/conceptglobal/pmc/fragments/FOHome;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 497
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$300(Lcom/conceptglobal/pmc/fragments/FOHome;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$300(Lcom/conceptglobal/pmc/fragments/FOHome;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Survey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 498
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$500(Lcom/conceptglobal/pmc/fragments/FOHome;)V

    goto :goto_0

    .line 503
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$600(Lcom/conceptglobal/pmc/fragments/FOHome;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$600(Lcom/conceptglobal/pmc/fragments/FOHome;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    .line 504
    new-instance p1, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;-><init>(Lcom/conceptglobal/pmc/fragments/FOHome;Lcom/conceptglobal/pmc/fragments/FOHome$1;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/FOHome$LoadRadiusDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 506
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$800(Lcom/conceptglobal/pmc/fragments/FOHome;)V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 480
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 481
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$100(Lcom/conceptglobal/pmc/fragments/FOHome;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LoadDataTask;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$200(Lcom/conceptglobal/pmc/fragments/FOHome;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Loading data.."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
