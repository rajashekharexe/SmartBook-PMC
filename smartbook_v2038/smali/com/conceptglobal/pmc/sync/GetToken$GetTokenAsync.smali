.class public Lcom/conceptglobal/pmc/sync/GetToken$GetTokenAsync;
.super Landroid/os/AsyncTask;
.source "GetToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/sync/GetToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetTokenAsync"
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
.field final synthetic this$0:Lcom/conceptglobal/pmc/sync/GetToken;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/sync/GetToken;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/GetToken$GetTokenAsync;->this$0:Lcom/conceptglobal/pmc/sync/GetToken;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 149
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/sync/GetToken$GetTokenAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/GetToken$GetTokenAsync;->this$0:Lcom/conceptglobal/pmc/sync/GetToken;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 149
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/sync/GetToken$GetTokenAsync;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 161
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
