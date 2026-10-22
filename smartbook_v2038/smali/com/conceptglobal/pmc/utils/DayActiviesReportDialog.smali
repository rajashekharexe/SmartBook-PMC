.class public Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;
.super Lcom/conceptglobal/imaterialdesign/app/Dialog;
.source "DayActiviesReportDialog.java"


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private close:Landroid/widget/Button;

.field private endDay:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/conceptglobal/pmc/interfaces/OnEndDayListener;

.field private noInternet:Landroid/widget/TextView;

.field private refresh:Landroid/widget/Button;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnEndDayListener;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->mListener:Lcom/conceptglobal/pmc/interfaces/OnEndDayListener;

    .line 45
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->alertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;)Lcom/conceptglobal/pmc/interfaces/OnEndDayListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->mListener:Lcom/conceptglobal/pmc/interfaces/OnEndDayListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->loadData()V

    return-void
.end method

.method private loadData()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$4;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$4;-><init>(Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 127
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->noInternet:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->refresh:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->endDay:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlFODaywiseReport()Ljava/lang/String;

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

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->noInternet:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->refresh:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->endDay:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 5

    const v0, 0x1020002

    .line 52
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 53
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0099

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 62
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 63
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 64
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 65
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    .line 66
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 68
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->alertDialog:Landroid/app/AlertDialog;

    const v1, 0x7f090600

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->webView:Landroid/webkit/WebView;

    .line 69
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->alertDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0904ae

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->noInternet:Landroid/widget/TextView;

    .line 70
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pleaseCheckDataError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->alertDialog:Landroid/app/AlertDialog;

    const v1, 0x7f09007b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->endDay:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->alertDialog:Landroid/app/AlertDialog;

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->refresh:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->alertDialog:Landroid/app/AlertDialog;

    const v1, 0x7f090078

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->close:Landroid/widget/Button;

    .line 74
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->loadData()V

    .line 76
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->endDay:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$1;-><init>(Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->refresh:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$2;-><init>(Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->alertDialog:Landroid/app/AlertDialog;

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/utils/Ibutton;

    .line 99
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;->close:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog$3;-><init>(Lcom/conceptglobal/pmc/utils/DayActiviesReportDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
