.class public Lcom/conceptglobal/pmc/activity/MandiPricesActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MandiPricesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/activity/MandiPricesActivity$WebAppInterface;
    }
.end annotation


# instance fields
.field IsbackEnabled:Z

.field private activityName:Ljava/lang/String;

.field from:Ljava/lang/String;

.field tvNoData:Landroid/widget/TextView;

.field webAppInterface:Lcom/conceptglobal/pmc/activity/MandiPricesActivity$WebAppInterface;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->from:Ljava/lang/String;

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f090600

    .line 119
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->webView:Landroid/webkit/WebView;

    const v0, 0x7f0904bb

    .line 120
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->tvNoData:Landroid/widget/TextView;

    return-void
.end method

.method private loadData()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 67
    invoke-static {p0}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$2;-><init>(Lcom/conceptglobal/pmc/activity/MandiPricesActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 85
    iget-object v0, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$3;-><init>(Lcom/conceptglobal/pmc/activity/MandiPricesActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 96
    iget-object v0, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 100
    new-instance v0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$WebAppInterface;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$WebAppInterface;-><init>(Lcom/conceptglobal/pmc/activity/MandiPricesActivity;Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->webAppInterface:Lcom/conceptglobal/pmc/activity/MandiPricesActivity$WebAppInterface;

    .line 101
    iget-object v1, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->webView:Landroid/webkit/WebView;

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewMandiPrices()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?PdaId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    const-string v0, "No Internet"

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->showNoInternetDialog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showNoInternetDialog(Ljava/lang/String;)V
    .locals 3

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$1;-><init>(Lcom/conceptglobal/pmc/activity/MandiPricesActivity;)V

    const-string v2, "Ok"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 38
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0031

    .line 39
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->setContentView(I)V

    const p1, 0x7f09045f

    .line 40
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 44
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 47
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 48
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 50
    invoke-direct {p0}, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->init()V

    .line 51
    invoke-direct {p0}, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->loadData()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 127
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->finish()V

    .line 152
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
