.class Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;
.super Landroid/os/AsyncTask;
.source "ApplicationPatchNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationDownloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/app/Activity;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final dialog:Landroid/app/ProgressDialog;

.field private status:Ljava/lang/String;

.field final synthetic this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;)V
    .locals 1

    .line 64
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;->status:Ljava/lang/String;

    .line 67
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->access$100(Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;-><init>(Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, [Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;->doInBackground([Landroid/app/Activity;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/app/Activity;)Ljava/lang/Void;
    .locals 1

    .line 75
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;

    invoke-static {v0}, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->access$200(Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->access$300(Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;Ljava/io/File;)Z

    .line 77
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->access$400(Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;->status:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 83
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;->status:Ljava/lang/String;

    const-string v0, "Yes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->access$500(Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;)V

    goto :goto_0

    .line 94
    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;->this$0:Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;

    invoke-static {v0}, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->access$100(Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    const-string v0, "There is no application to download"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader$1;-><init>(Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;)V

    .line 96
    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Downloading application..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
