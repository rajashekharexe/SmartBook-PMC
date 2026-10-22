.class public Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface;
    }
.end annotation


# instance fields
.field private cropName:Ljava/lang/String;

.field private htmlStartPage:Ljava/lang/String;

.field private localHTMLZIPURL:Ljava/lang/String;

.field private popid:I

.field private webAppInterface:Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private loadData()V
    .locals 15

    .line 62
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$1;-><init>(Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$2;-><init>(Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 97
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 98
    new-instance v0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface;-><init>(Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->webAppInterface:Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface;

    .line 99
    iget-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->webView:Landroid/webkit/WebView;

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->localHTMLZIPURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->cropName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->htmlStartPage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 108
    new-instance v2, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    .line 109
    iget v3, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->popid:I

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getUserId()I

    move-result v6

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTimeForLogs()Ljava/lang/String;

    move-result-object v7

    iget v13, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->popid:I

    const-string v14, "POPID"

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x3

    const-string v11, "VIEWED"

    const/4 v12, 0x1

    invoke-virtual/range {v2 .. v14}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->insertContentLog(IIIILjava/lang/String;ZZILjava/lang/String;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0046

    .line 38
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    const-string v0, "localHTMLZIPURL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->localHTMLZIPURL:Ljava/lang/String;

    .line 42
    const-string v0, "htmlStartPage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->htmlStartPage:Ljava/lang/String;

    .line 43
    const-string v0, "cropName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->cropName:Ljava/lang/String;

    .line 44
    const-string v0, "POPID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->popid:I

    :cond_0
    const p1, 0x7f090601

    .line 46
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->webView:Landroid/webkit/WebView;

    .line 47
    iget-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->cropName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Z)Landroidx/appcompat/widget/Toolbar;

    .line 48
    invoke-direct {p0}, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->loadData()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->finish()V

    .line 57
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
