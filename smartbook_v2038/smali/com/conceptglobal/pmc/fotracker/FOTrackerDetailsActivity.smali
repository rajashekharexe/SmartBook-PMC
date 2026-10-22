.class public Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FOTrackerDetailsActivity.java"


# instance fields
.field private mActivity:Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;

.field private sync:Landroid/widget/ImageView;

.field private tabHost:Landroid/widget/TabHost;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;)Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->mActivity:Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;)Landroid/widget/TabHost;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->tabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->showNoInternetDialog(Ljava/lang/String;)V

    return-void
.end method

.method private addTab(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 137
    iget-object p2, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p2, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    .line 138
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0c00b1

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090459

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 140
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p2, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 144
    const-string p1, "Tag1"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f090414

    .line 145
    invoke-virtual {p2, p1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 146
    :cond_0
    const-string p1, "Tag2"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 147
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p3, 0x20000

    .line 156
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    invoke-virtual {p2, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 160
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f090209

    .line 113
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->tabHost:Landroid/widget/TabHost;

    const v0, 0x7f090208

    .line 114
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->webView:Landroid/webkit/WebView;

    const v0, 0x7f090410

    .line 115
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->sync:Landroid/widget/ImageView;

    return-void
.end method

.method private settingData()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://iconceptapps.com/PMCDemo/PMCMobilePages/FOReport/Index/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    :cond_0
    return-void
.end method

.method private settingListeners()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->sync:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity$1;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity$2;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method private settingTabs()V
    .locals 3

    .line 121
    new-instance v0, Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    const/4 v1, 0x0

    .line 122
    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 123
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    const v0, 0x7f080166

    .line 124
    const-string v1, "Tag2"

    const-string v2, "Home"

    invoke-direct {p0, v2, v0, v1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    const v0, 0x7f080112

    .line 125
    const-string v1, "Tag1"

    const-string v2, "Report"

    invoke-direct {p0, v2, v0, v1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->addTab(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private showNoInternetDialog(Ljava/lang/String;)V
    .locals 3

    .line 97
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity$3;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 105
    invoke-static {p0}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {p1}, Lcom/conceptglobal/pmc/fotracker/util/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->requestWindowFeature(I)Z

    .line 35
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002a

    .line 36
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->setContentView(I)V

    .line 42
    iput-object p0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->mActivity:Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;

    .line 43
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->init()V

    .line 44
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->settingTabs()V

    .line 45
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->settingData()V

    .line 46
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->settingListeners()V

    return-void
.end method
