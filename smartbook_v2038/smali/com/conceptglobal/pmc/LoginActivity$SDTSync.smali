.class Lcom/conceptglobal/pmc/LoginActivity$SDTSync;
.super Landroid/os/AsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDTSync"
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
.field final synthetic this$0:Lcom/conceptglobal/pmc/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/LoginActivity;)V
    .locals 0

    .line 1582
    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$SDTSync;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/LoginActivity;Lcom/conceptglobal/pmc/LoginActivity$1;)V
    .locals 0

    .line 1582
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/LoginActivity$SDTSync;-><init>(Lcom/conceptglobal/pmc/LoginActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1582
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/LoginActivity$SDTSync;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 1595
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$SDTSync;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$2200(Lcom/conceptglobal/pmc/LoginActivity;)V

    .line 1596
    const-string p1, ""

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1582
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/LoginActivity$SDTSync;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 1600
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 1587
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
