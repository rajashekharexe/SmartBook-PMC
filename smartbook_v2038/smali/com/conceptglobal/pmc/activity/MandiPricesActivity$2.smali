.class Lcom/conceptglobal/pmc/activity/MandiPricesActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "MandiPricesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mProgress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/conceptglobal/pmc/activity/MandiPricesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/activity/MandiPricesActivity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$2;->this$0:Lcom/conceptglobal/pmc/activity/MandiPricesActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$2;->mProgress:Landroid/app/ProgressDialog;

    if-nez p1, :cond_0

    .line 74
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$2;->this$0:Lcom/conceptglobal/pmc/activity/MandiPricesActivity;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$2;->mProgress:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 76
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$2;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$2;->mProgress:Landroid/app/ProgressDialog;

    const-string v0, "Loading "

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$2;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$2;->mProgress:Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method
