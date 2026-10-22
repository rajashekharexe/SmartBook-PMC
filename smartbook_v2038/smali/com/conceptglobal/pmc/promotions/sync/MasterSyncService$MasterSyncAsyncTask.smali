.class Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService$MasterSyncAsyncTask;
.super Landroid/os/AsyncTask;
.source "MasterSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterSyncAsyncTask"
.end annotation

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
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService$MasterSyncAsyncTask;->this$0:Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService$1;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService$MasterSyncAsyncTask;-><init>(Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService$MasterSyncAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService$MasterSyncAsyncTask;->this$0:Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->doMasterSync()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService$MasterSyncAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 86
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService$MasterSyncAsyncTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method
