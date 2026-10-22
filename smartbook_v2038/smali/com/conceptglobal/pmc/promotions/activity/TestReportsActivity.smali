.class public Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TestReportsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity$WebAppInterface;
    }
.end annotation


# instance fields
.field IsbackEnabled:Z

.field private activityName:Ljava/lang/String;

.field from:Ljava/lang/String;

.field tvNoData:Landroid/widget/TextView;

.field private vedioId:I

.field webAppInterface:Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity$WebAppInterface;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->from:Ljava/lang/String;

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f090600

    .line 100
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->webView:Landroid/webkit/WebView;

    const v0, 0x7f0904bb

    .line 101
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->tvNoData:Landroid/widget/TextView;

    return-void
.end method

.method private loadData()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 61
    invoke-static {p0}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity$2;-><init>(Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 81
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity$WebAppInterface;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity$WebAppInterface;-><init>(Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->webAppInterface:Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity$WebAppInterface;

    .line 82
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->webView:Landroid/webkit/WebView;

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "http://mliquidate.com/pmcdemo/portal2/Quiz/AttemptQuiz/ViewReult?PdaId=1234"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    const-string v0, "No Internet"

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->showNoInternetDialog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showNoInternetDialog(Ljava/lang/String;)V
    .locals 3

    .line 48
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;)V

    const-string v2, "Ok"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 142
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003d

    .line 33
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->setContentView(I)V

    const p1, 0x7f09045f

    .line 34
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 38
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 39
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 41
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->init()V

    .line 42
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->loadData()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 108
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/TestReportsActivity;->finish()V

    .line 137
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
