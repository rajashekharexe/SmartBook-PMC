.class public Lcom/conceptglobal/pmc/ReportViewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ReportViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;
    }
.end annotation


# instance fields
.field IsbackEnabled:Z

.field private activityID:I

.field private activityName:Ljava/lang/String;

.field private contactID:J

.field expensesUrl:Ljava/lang/String;

.field from:Ljava/lang/String;

.field llParentView:Landroid/widget/LinearLayout;

.field tvNoData:Landroid/widget/TextView;

.field webAppInterface:Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->expensesUrl:Ljava/lang/String;

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f090600

    .line 251
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ReportViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    const v0, 0x7f0904bb

    .line 252
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ReportViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->tvNoData:Landroid/widget/TextView;

    const v0, 0x7f0902a8

    .line 253
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ReportViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->llParentView:Landroid/widget/LinearLayout;

    return-void
.end method

.method private loadData()V
    .locals 7

    .line 123
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 124
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_12

    .line 125
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/conceptglobal/pmc/ReportViewActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/ReportViewActivity$2;-><init>(Lcom/conceptglobal/pmc/ReportViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 144
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    const-string v2, "Reports"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    .line 150
    iget v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->activityID:I

    if-ne v0, v1, :cond_0

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/fo/WebviewLandscapeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    const-string v1, "title"

    iget-object v3, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v1, "From"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ReportViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 156
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->finish()V

    goto/16 :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    .line 158
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlFarmerTargetReports()Ljava/lang/String;

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

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 160
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

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

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 162
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlAttendanceReport()Ljava/lang/String;

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

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 164
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlApplyLeaveReports()Ljava/lang/String;

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

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_13

    .line 168
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlTaDaReports()Ljava/lang/String;

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

    goto/16 :goto_0

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    const-string v2, "Planning"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Android"

    if-eqz v0, :cond_8

    .line 173
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->activityName:Ljava/lang/String;

    const-string v1, "Demand Generation Plan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 174
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    const-string v3, "DemandGenerationPlan"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlPlaning(Ljava/lang/String;)Ljava/lang/String;

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

    goto/16 :goto_0

    .line 175
    :cond_6
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->activityName:Ljava/lang/String;

    const-string v1, "Product Wise Sales Plan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 176
    new-instance v0, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;-><init>(Lcom/conceptglobal/pmc/ReportViewActivity;Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webAppInterface:Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;

    .line 177
    iget-object v1, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    const-string v3, "ProductWiseSalesPlan"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlPlaning(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    :cond_7
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->activityName:Ljava/lang/String;

    const-string v1, "Distributor Sales Plan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 180
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlDistributorSalesPlan()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?businessType=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :cond_8
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    const-string v4, "MDOLocation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 183
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlMDOLOcation()Ljava/lang/String;

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

    goto/16 :goto_0

    .line 184
    :cond_9
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    const-string v4, "UserCreation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "from"

    if-eqz v0, :cond_a

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ReportViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->finish()V

    goto/16 :goto_0

    .line 190
    :cond_a
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    const-string v4, "ApproveResignations"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ReportViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 194
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->finish()V

    goto/16 :goto_0

    .line 196
    :cond_b
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    const-string v4, "AttendanceRegularization"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 197
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlAttendanceRegularization()Ljava/lang/String;

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

    goto/16 :goto_0

    .line 198
    :cond_c
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    const-string v4, "Expenses"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "https://drive.google.com/viewerng/viewer?embedded=true&url="

    if-eqz v0, :cond_d

    .line 199
    new-instance v0, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;-><init>(Lcom/conceptglobal/pmc/ReportViewActivity;Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webAppInterface:Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;

    .line 200
    iget-object v1, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->expensesUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :cond_d
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    const-string v6, "Abscond"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ReportViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->finish()V

    goto/16 :goto_0

    .line 210
    :cond_e
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    const-string v5, "Retailer details"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 212
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlRetailerReport()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->contactID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :cond_f
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    const-string v5, "Task Assign"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 216
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

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

    goto/16 :goto_0

    .line 218
    :cond_10
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    const-string v5, "HRPolicy"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 219
    new-instance v0, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, p0, v5, p0}, Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;-><init>(Lcom/conceptglobal/pmc/ReportViewActivity;Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webAppInterface:Lcom/conceptglobal/pmc/ReportViewActivity$WebAppInterface;

    .line 220
    iget-object v5, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v5, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    :try_start_0
    iget v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->activityID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "UTF-8"

    if-ne v0, v1, :cond_11

    .line 224
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v3, "pmc_hr_policy"

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueForPDFLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_11
    if-ne v0, v3, :cond_13

    .line 230
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v3, "pmc_training_document"

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueForPDFLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 244
    :cond_12
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/ReportViewActivity;->showNoInternetDialog(Ljava/lang/String;)V

    :cond_13
    :goto_0
    return-void
.end method

.method private setBottomViewPadding()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->llParentView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/conceptglobal/pmc/ReportViewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/ReportViewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/conceptglobal/pmc/ReportViewActivity;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private showNoInternetDialog(Ljava/lang/String;)V
    .locals 3

    .line 107
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/ReportViewActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/ReportViewActivity$1;-><init>(Lcom/conceptglobal/pmc/ReportViewActivity;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 116
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$setBottomViewPadding$0$com-conceptglobal-pmc-ReportViewActivity(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 313
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 315
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->llParentView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->llParentView:Landroid/widget/LinearLayout;

    .line 318
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->llParentView:Landroid/widget/LinearLayout;

    .line 319
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 316
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    return-object p2
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 55
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0038

    .line 56
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/ReportViewActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "activityName"

    if-eqz p1, :cond_9

    .line 58
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "from"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "ExpensesUrl"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->expensesUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 63
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    const-string v1, " ("

    const-string v2, ")"

    if-eqz p1, :cond_0

    const-string v3, "Planning"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_1

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v3, "Expenses"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_1

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v3, "MDOLocation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_1

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string v3, "UserCreation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_1

    .line 72
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string v3, "ApproveResignations"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_1

    .line 74
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string v3, "AttendanceRegularization"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_1

    .line 76
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string v3, "Abscond"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_1

    .line 78
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string v3, "Retailer details"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    .line 80
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->from:Ljava/lang/String;

    if-eqz p1, :cond_8

    const-string v3, "Task Assign"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    .line 83
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Reports ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 86
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 87
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "activityID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->activityID:I

    .line 88
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->activityName:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ContactID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 90
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->contactID:J

    .line 98
    :cond_a
    invoke-direct {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->init()V

    .line 99
    invoke-direct {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->setBottomViewPadding()V

    .line 100
    invoke-direct {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->loadData()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 281
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 259
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f090413

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    const-string v0, "Loading page.."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 271
    invoke-direct {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->loadData()V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->activityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "Product Wise Sales Plan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/ReportViewActivity;->IsbackEnabled:Z

    if-nez v0, :cond_3

    .line 263
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->finish()V

    goto :goto_0

    .line 265
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ReportViewActivity;->finish()V

    .line 276
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
