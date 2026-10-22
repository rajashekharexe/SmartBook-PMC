.class Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;
.super Landroid/os/AsyncTask;
.source "ResignationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/ResignationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrovalStatusTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

.field final synthetic this$0:Lcom/conceptglobal/pmc/ResignationActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/ResignationActivity;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;->this$0:Lcom/conceptglobal/pmc/ResignationActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/ResignationActivity;Lcom/conceptglobal/pmc/ResignationActivity$1;)V
    .locals 0

    .line 461
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;-><init>(Lcom/conceptglobal/pmc/ResignationActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 461
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 476
    iget-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;->this$0:Lcom/conceptglobal/pmc/ResignationActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/ResignationActivity;->access$700(Lcom/conceptglobal/pmc/ResignationActivity;)V

    .line 477
    const-string p1, ""

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 461
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 481
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 482
    iget-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;->this$0:Lcom/conceptglobal/pmc/ResignationActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/ResignationActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 483
    iget-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->dismiss()V

    .line 484
    iget-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;->this$0:Lcom/conceptglobal/pmc/ResignationActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/ResignationActivity;->bindStatusTabData()V

    .line 486
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;->this$0:Lcom/conceptglobal/pmc/ResignationActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/ResignationActivity;->access$500(Lcom/conceptglobal/pmc/ResignationActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 487
    iget-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;->this$0:Lcom/conceptglobal/pmc/ResignationActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/ResignationActivity;->access$600(Lcom/conceptglobal/pmc/ResignationActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 466
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 467
    new-instance v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;->this$0:Lcom/conceptglobal/pmc/ResignationActivity;

    sget-object v2, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->COUNT_BAR:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    const-string v3, "GetMasterSyncData"

    invoke-direct {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    .line 468
    const-string v1, "Getting latest status"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->showDialog(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;->this$0:Lcom/conceptglobal/pmc/ResignationActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/ResignationActivity;->access$500(Lcom/conceptglobal/pmc/ResignationActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;->this$0:Lcom/conceptglobal/pmc/ResignationActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/ResignationActivity;->access$600(Lcom/conceptglobal/pmc/ResignationActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
