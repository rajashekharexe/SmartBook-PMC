.class Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mProgress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$1;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$1;->mProgress:Landroid/app/ProgressDialog;

    if-nez p1, :cond_0

    .line 68
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$1;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$1;->mProgress:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 70
    iget-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$1;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$1;->mProgress:Landroid/app/ProgressDialog;

    const-string v0, "Loading "

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$1;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$1;->mProgress:Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method
