.class public Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WebviewLandscapeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity$WebAppInterface;
    }
.end annotation


# instance fields
.field IsbackEnabled:Z

.field private activityID:J

.field private activityName:Ljava/lang/String;

.field from:Ljava/lang/String;

.field title:Ljava/lang/String;

.field tvNoData:Landroid/widget/TextView;

.field webAppInterface:Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity$WebAppInterface;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->from:Ljava/lang/String;

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f090600

    .line 149
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->webView:Landroid/webkit/WebView;

    const v0, 0x7f0904bb

    .line 150
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->tvNoData:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic lambda$setBottomViewPadding$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 191
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const v1, 0x1020013

    .line 194
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TabWidget;

    if-eqz p0, :cond_0

    .line 197
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingLeft()I

    move-result v1

    .line 198
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingTop()I

    move-result v2

    .line 199
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getPaddingRight()I

    move-result v3

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 196
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/TabWidget;->setPadding(IIII)V

    :cond_0
    return-object p1
.end method

.method private loadData()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 106
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity$3;-><init>(Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 124
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 126
    new-instance v0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity$WebAppInterface;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity$WebAppInterface;-><init>(Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->webAppInterface:Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity$WebAppInterface;

    .line 129
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->from:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->from:Ljava/lang/String;

    const-string v1, "Weekly Tour Plan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlWeeklyPlan()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->from:Ljava/lang/String;

    const-string v1, "Task Assign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlTaskAssign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->from:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->from:Ljava/lang/String;

    const-string v1, "Reports"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlReportsNew()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    const-string v0, "No Internet"

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->showNoInternetDialog(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setBottomViewPadding()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private setTopviewViewPadding(Landroidx/appcompat/widget/Toolbar;)V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 77
    new-instance v0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity$1;-><init>(Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private showNoInternetDialog(Ljava/lang/String;)V
    .locals 3

    .line 93
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity$2;-><init>(Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;)V

    const-string v2, "Ok"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 186
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 43
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003d

    .line 44
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->setContentView(I)V

    const p1, 0x7f09045f

    .line 45
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 49
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 50
    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->title:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "From"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->from:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activityID"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->activityID:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 60
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 61
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 63
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->init()V

    .line 64
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->setBottomViewPadding()V

    .line 65
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->setTopviewViewPadding(Landroidx/appcompat/widget/Toolbar;)V

    .line 66
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->loadData()V

    .line 67
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->setBottomViewPadding()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 156
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 173
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;->finish()V

    .line 181
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
