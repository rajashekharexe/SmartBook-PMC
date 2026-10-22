.class public Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TargetAndPlanActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$WebAppInterface;
    }
.end annotation


# instance fields
.field IsbackEnabled:Z

.field private activityName:Ljava/lang/String;

.field from:Ljava/lang/String;

.field isPlanDataEntered:Z

.field tvNoData:Landroid/widget/TextView;

.field webAppInterface:Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$WebAppInterface;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->from:Ljava/lang/String;

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->isPlanDataEntered:Z

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f090600

    .line 128
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->webView:Landroid/webkit/WebView;

    const v0, 0x7f0904bb

    .line 129
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->tvNoData:Landroid/widget/TextView;

    return-void
.end method

.method private loadData()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 90
    invoke-static {p0}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$3;-><init>(Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 108
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 110
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$WebAppInterface;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$WebAppInterface;-><init>(Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->webAppInterface:Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$WebAppInterface;

    .line 111
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->webView:Landroid/webkit/WebView;

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlTargetAndPlan()Ljava/lang/String;

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

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    const-string v0, "No Internet"

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->showNoInternetDialog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showNoInternetDialog(Ljava/lang/String;)V
    .locals 3

    .line 77
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$2;-><init>(Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;)V

    const-string v2, "Ok"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 181
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003d

    .line 42
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->setContentView(I)V

    const p1, 0x7f09045f

    .line 43
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 47
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
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

    .line 50
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 52
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 55
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 70
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->init()V

    .line 71
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->loadData()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 136
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->isPlanDataEntered:Z

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;->finish()V

    goto :goto_0

    .line 161
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 162
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 163
    const-string v1, "Please submit data in summary tab."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 164
    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$4;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity$4;-><init>(Lcom/conceptglobal/pmc/promotions/activity/TargetAndPlanActivity;)V

    const/4 v2, -0x1

    const-string v3, "Ok"

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 169
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 176
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
