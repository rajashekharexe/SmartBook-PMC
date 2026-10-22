.class public Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;
.super Landroid/os/AsyncTask;
.source "SendRequestToServerAsync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private URL:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private error:Ljava/lang/Exception;

.field private object:Ljava/lang/String;

.field private oncompletelistener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private progressBarRequired:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->error:Ljava/lang/Exception;

    .line 30
    iput-object p1, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->context:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->object:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->URL:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->oncompletelistener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 34
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->progressBarRequired:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->error:Ljava/lang/Exception;

    .line 22
    iput-object p3, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->object:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->URL:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->oncompletelistener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 26
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->progressBarRequired:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .line 48
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object p1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->object:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->URL:Ljava/lang/String;

    const-string v1, "ActivatePMC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->object:Ljava/lang/String;

    iget-object v1, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->URL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestWithoutGzip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->object:Ljava/lang/String;

    iget-object v1, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->URL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendGetRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    iput-object p1, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->error:Ljava/lang/Exception;

    .line 64
    const-string v0, "SendReqToServerAsync"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 73
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->dismissProgressDialog()V

    .line 75
    iget-object v0, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->oncompletelistener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    iget-object v1, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->error:Ljava/lang/Exception;

    invoke-interface {v0, p1, v1}, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->progressBarRequired:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->showProgressDialog(Landroid/content/Context;)V

    .line 42
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
