.class Lcom/conceptglobal/pmc/ReportViewActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "ReportViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/ReportViewActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mProgress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/conceptglobal/pmc/ReportViewActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/ReportViewActivity;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity$2;->this$0:Lcom/conceptglobal/pmc/ReportViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 130
    iget-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity$2;->this$0:Lcom/conceptglobal/pmc/ReportViewActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/ReportViewActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity$2;->mProgress:Landroid/app/ProgressDialog;

    if-nez p1, :cond_0

    .line 132
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity$2;->this$0:Lcom/conceptglobal/pmc/ReportViewActivity;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity$2;->mProgress:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 134
    iget-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity$2;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity$2;->mProgress:Landroid/app/ProgressDialog;

    const-string v0, "Loading "

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity$2;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity$2;->mProgress:Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method
