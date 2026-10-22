.class Lcom/conceptglobal/pmc/LoginActivity$AcknowledgementUserIMEIStatus;
.super Landroid/os/AsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcknowledgementUserIMEIStatus"
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
.field dataAcknowledgementIMEIActiveStatus:Lcom/conceptglobal/pmc/model/DataAcknowledgementIMEIActiveStatus;

.field final synthetic this$0:Lcom/conceptglobal/pmc/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/LoginActivity;Lcom/conceptglobal/pmc/model/DataAcknowledgementIMEIActiveStatus;)V
    .locals 0

    .line 1814
    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$AcknowledgementUserIMEIStatus;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1815
    iput-object p2, p0, Lcom/conceptglobal/pmc/LoginActivity$AcknowledgementUserIMEIStatus;->dataAcknowledgementIMEIActiveStatus:Lcom/conceptglobal/pmc/model/DataAcknowledgementIMEIActiveStatus;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1811
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/LoginActivity$AcknowledgementUserIMEIStatus;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 1825
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$AcknowledgementUserIMEIStatus;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$AcknowledgementUserIMEIStatus;->dataAcknowledgementIMEIActiveStatus:Lcom/conceptglobal/pmc/model/DataAcknowledgementIMEIActiveStatus;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/LoginActivity;->access$2600(Lcom/conceptglobal/pmc/LoginActivity;Lcom/conceptglobal/pmc/model/DataAcknowledgementIMEIActiveStatus;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1811
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/LoginActivity$AcknowledgementUserIMEIStatus;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 1831
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 1820
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
