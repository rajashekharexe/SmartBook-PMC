.class Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;
.super Landroid/os/AsyncTask;
.source "Patch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/patch/Patch;
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

.field final synthetic this$0:Lcom/conceptglobal/pmc/patch/Patch;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/patch/Patch;)V
    .locals 2

    .line 164
    iput-object p1, p0, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->this$0:Lcom/conceptglobal/pmc/patch/Patch;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->status:Ljava/lang/String;

    .line 166
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-static {p1}, Lcom/conceptglobal/pmc/patch/Patch;->access$200(Lcom/conceptglobal/pmc/patch/Patch;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 167
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 168
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 169
    invoke-static {p1}, Lcom/conceptglobal/pmc/patch/Patch;->access$100(Lcom/conceptglobal/pmc/patch/Patch;)Landroid/widget/ProgressBar;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/patch/Patch;Lcom/conceptglobal/pmc/patch/Patch$1;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;-><init>(Lcom/conceptglobal/pmc/patch/Patch;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 159
    check-cast p1, [Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->doInBackground([Landroid/app/Activity;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/app/Activity;)Ljava/lang/Void;
    .locals 1

    .line 183
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->this$0:Lcom/conceptglobal/pmc/patch/Patch;

    invoke-static {v0}, Lcom/conceptglobal/pmc/patch/Patch;->access$400(Lcom/conceptglobal/pmc/patch/Patch;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->this$0:Lcom/conceptglobal/pmc/patch/Patch;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/patch/Patch;->access$500(Lcom/conceptglobal/pmc/patch/Patch;Ljava/io/File;)Z

    .line 185
    iget-object p1, p0, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->this$0:Lcom/conceptglobal/pmc/patch/Patch;

    invoke-static {p1}, Lcom/conceptglobal/pmc/patch/Patch;->access$600(Lcom/conceptglobal/pmc/patch/Patch;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->status:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 159
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 190
    iget-object p1, p0, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->this$0:Lcom/conceptglobal/pmc/patch/Patch;

    invoke-static {p1}, Lcom/conceptglobal/pmc/patch/Patch;->access$300(Lcom/conceptglobal/pmc/patch/Patch;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->dialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->status:Ljava/lang/String;

    const-string v0, "Yes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 195
    iget-object p1, p0, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->this$0:Lcom/conceptglobal/pmc/patch/Patch;

    invoke-static {p1}, Lcom/conceptglobal/pmc/patch/Patch;->access$700(Lcom/conceptglobal/pmc/patch/Patch;)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->this$0:Lcom/conceptglobal/pmc/patch/Patch;

    invoke-static {p1}, Lcom/conceptglobal/pmc/patch/Patch;->access$300(Lcom/conceptglobal/pmc/patch/Patch;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 197
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->this$0:Lcom/conceptglobal/pmc/patch/Patch;

    invoke-static {v0}, Lcom/conceptglobal/pmc/patch/Patch;->access$200(Lcom/conceptglobal/pmc/patch/Patch;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 198
    const-string v0, "There is no application to download"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader$1;-><init>(Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;)V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 203
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 204
    iget-object v0, p0, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->this$0:Lcom/conceptglobal/pmc/patch/Patch;

    invoke-static {v0}, Lcom/conceptglobal/pmc/patch/Patch;->access$200(Lcom/conceptglobal/pmc/patch/Patch;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->this$0:Lcom/conceptglobal/pmc/patch/Patch;

    invoke-static {v0}, Lcom/conceptglobal/pmc/patch/Patch;->access$300(Lcom/conceptglobal/pmc/patch/Patch;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Downloading application..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
