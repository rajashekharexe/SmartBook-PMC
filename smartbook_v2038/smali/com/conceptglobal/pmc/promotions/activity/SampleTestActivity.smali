.class public Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SampleTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$WebAppInterface;
    }
.end annotation


# instance fields
.field IsbackEnabled:Z

.field private activityName:Ljava/lang/String;

.field from:Ljava/lang/String;

.field tvNoData:Landroid/widget/TextView;

.field private vedioId:I

.field webAppInterface:Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$WebAppInterface;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->from:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->vedioId:I

    return p0
.end method

.method private init()V
    .locals 1

    const v0, 0x7f090600

    .line 113
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->webView:Landroid/webkit/WebView;

    const v0, 0x7f0904bb

    .line 114
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->tvNoData:Landroid/widget/TextView;

    return-void
.end method

.method private loadData()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 73
    invoke-static {p0}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$2;-><init>(Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 91
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 93
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$WebAppInterface;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$WebAppInterface;-><init>(Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->webAppInterface:Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$WebAppInterface;

    .line 94
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->webView:Landroid/webkit/WebView;

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "http://mliquidate.com/pmc2.0demo/quiz/attempt-quiz?quizid=25&PdaId=5207"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    const-string v0, "No Internet"

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->showNoInternetDialog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showNoInternetDialog(Ljava/lang/String;)V
    .locals 3

    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;)V

    const-string v2, "Ok"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 164
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003d

    .line 37
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->setContentView(I)V

    const p1, 0x7f09045f

    .line 38
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 42
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 43
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "vedioId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->vedioId:I

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->init()V

    .line 54
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->loadData()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 121
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->finish()V

    .line 159
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
