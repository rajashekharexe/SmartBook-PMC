.class public Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "NeoCampaignWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/NeoCampaignWebView$WebAppInterface;
    }
.end annotation


# static fields
.field private static isRoutePoped:Z = false


# instance fields
.field private activityName:Ljava/lang/String;

.field private campaignID:Ljava/lang/String;

.field closeActivity_Receiver:Landroid/content/BroadcastReceiver;

.field private crop:Ljava/lang/String;

.field private dataSent:Z

.field private fragment:Lcom/conceptglobal/pmc/fragments/WebViewFragment;

.field private location:Ljava/lang/String;

.field private mProgress:Landroid/app/ProgressDialog;

.field neocampaigndata_Receiver:Landroid/content/BroadcastReceiver;

.field private products:Ljava/lang/String;

.field private progressbarRL:Landroid/widget/RelativeLayout;

.field private retailerContactIDs:Ljava/lang/String;

.field private retailerNames:Ljava/lang/String;

.field private transId:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->dataSent:Z

    .line 223
    new-instance v0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView$2;-><init>(Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->closeActivity_Receiver:Landroid/content/BroadcastReceiver;

    .line 241
    new-instance v0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView$3;-><init>(Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->neocampaigndata_Receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->dataSent:Z

    return p0
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->dataSent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->campaignID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;)Landroid/webkit/WebView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->navigateToNeocampaign()V

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;Lorg/json/JSONObject;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->handleNeoCampaignCallbackEvents(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static convertJsonArrayToListMap(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 485
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 488
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 490
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 492
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 493
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 494
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 497
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 499
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method private handleNeoCampaignCallbackEvents(Lorg/json/JSONObject;)V
    .locals 9

    .line 425
    const-string v0, "MissedCallsList"

    const-string v1, "MobileNumber"

    const-string v2, "campaignCompleted"

    const-string v3, "updateCampaignId"

    const-string v4, "method"

    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "campaignId"

    const-string v7, "data"

    const-string v8, "Campaign_FARMERS_List"

    if-eqz v5, :cond_0

    .line 426
    :try_start_1
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 427
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 428
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 432
    :cond_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    const-string v0, "Completed"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 445
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->finish()V

    goto/16 :goto_0

    .line 446
    :cond_1
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "addMobileNumber"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 448
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 449
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 451
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 455
    :cond_2
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "missedCallsUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 456
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 458
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 459
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->convertJsonArrayToListMap(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 461
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 464
    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 465
    const-string p1, "BUNDLE"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 467
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 468
    :cond_3
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DismissDialog"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 469
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->progressbarRL:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 470
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->webView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0

    .line 471
    :cond_4
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "NavigateBack"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 472
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->onBackPressed()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    :goto_0
    return-void
.end method

.method private initData()V
    .locals 4

    .line 209
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "campaignID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->campaignID:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "transId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->transId:Ljava/lang/String;

    .line 212
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activityName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->activityName:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Crop"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->crop:Ljava/lang/String;

    .line 214
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Product"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->products:Ljava/lang/String;

    .line 215
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->location:Ljava/lang/String;

    .line 216
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RetailerName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->retailerNames:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RetailerContactID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->retailerContactIDs:Ljava/lang/String;

    .line 218
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->closeActivity_Receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "closeActivity"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 219
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->neocampaigndata_Receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "campaigndata"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private initWebView()V
    .locals 4

    const v0, 0x7f090363

    .line 106
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->progressbarRL:Landroid/widget/RelativeLayout;

    .line 107
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->initData()V

    const v0, 0x7f090600

    .line 108
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->webView:Landroid/webkit/WebView;

    .line 110
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x2

    .line 115
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 116
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 117
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 120
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v3, -0x1

    .line 121
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    const/4 v3, 0x0

    .line 123
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 124
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 125
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 126
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView$WebAppInterface;

    invoke-direct {v1, p0, p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView$WebAppInterface;-><init>(Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;Landroid/content/Context;)V

    const-string v3, "AndroidApp"

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView$1;-><init>(Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 175
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->PMCDUAT:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/InstanceConfig;->getInstance(Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;)Lcom/conceptglobal/pmc/utils/InstanceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/conceptglobal/pmc/utils/InstanceConfig;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/neoCampaignMUI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->pmcdlive:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/InstanceConfig;->getInstance(Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;)Lcom/conceptglobal/pmc/utils/InstanceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/conceptglobal/pmc/utils/InstanceConfig;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/neoCampaignMUILive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 193
    const-string v1, "NCWEBVIEW"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private loadWebViewFragment()V
    .locals 3

    .line 198
    invoke-static {}, Lcom/conceptglobal/pmc/fragments/FragmentHolder;->getInstance()Lcom/conceptglobal/pmc/fragments/FragmentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/FragmentHolder;->getFragment()Lcom/conceptglobal/pmc/fragments/WebViewFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->fragment:Lcom/conceptglobal/pmc/fragments/WebViewFragment;

    .line 199
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f09020e

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->fragment:Lcom/conceptglobal/pmc/fragments/WebViewFragment;

    .line 201
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->fragment:Lcom/conceptglobal/pmc/fragments/WebViewFragment;

    .line 202
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private navigateToNeocampaign()V
    .locals 4

    .line 261
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 263
    :try_start_0
    const-string v1, "method"

    const-string v2, "dataPassMethod"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v1, "ParentApp"

    const-string v2, "PMC"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v1, "userName"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getEmployeeID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v1, "password"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getPasswordQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v1, "Fcm_Key"

    const-string v2, "FCMKEY"

    invoke-static {p0, v2}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 272
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->campaignID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->sendCampaignDetails(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 278
    :cond_0
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->sendInitialData(Lorg/json/JSONObject;)V

    .line 281
    :goto_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->webView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:sendDataToNeoCampaign(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private prepareCampaignDetails(Lorg/json/JSONObject;)V
    .locals 11

    .line 312
    const-string v0, "IsLotteryEnabled"

    const-string v1, "PMC"

    const-string v2, ""

    :try_start_0
    const-string v3, "ParentApp"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v3, "CampignActivityId"

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->transId:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v3, "CampaignSource"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v1, "_id"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v1, "CampaignTitle"

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->activityName:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v1, "CampaignDescription"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v1, "CampaignStatus"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string v1, "CampaignProfileImage"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string v1, "CampignLatLong"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string v1, "CampignLocation"

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->location:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const-string v1, "CampignSubLocation"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v1, "CampignSubLocationLatLong"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string v1, "CampaignStartDate"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    const-string v1, "CampaignEndDate"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 328
    const-string v3, "Id"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string v3, "Name"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string v3, "MobileNumber"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v3, "CreatedBy"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string v1, "VMNType"

    const-string v3, "Call"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v1, "CampaignScheduleDate"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v1, "CampaignScheduleTime"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 342
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->products:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "NeoIntId"

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 343
    :try_start_1
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 344
    array-length v6, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v3, v7

    .line 345
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 346
    invoke-virtual {v9, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    const-string v10, "displayName"

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string v10, "Product Name"

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 353
    :cond_0
    const-string v3, "CampaignProductProfile"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 357
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 358
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    const-string v4, "Crop Name"

    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->crop:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    const-string v4, "Crop Code"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    const-string v4, "CropId"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 364
    const-string v3, "CampaignCrops"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string v1, "HasApprovals"

    const-string v3, "No"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 370
    const-string v3, "Moments"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 373
    const-string v3, "Zone"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string v3, "Region"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    const-string v3, "Territory"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    const-string v2, "ESADetails"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    const-string v1, "LotteryFlag"

    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 380
    const-string v1, "DiscountFlag"

    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 381
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 382
    const-string v0, "RetailerName"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->retailerNames:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string v0, "RetailerContactID"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->retailerContactIDs:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method private sendCampaignDetails(Lorg/json/JSONObject;)V
    .locals 2

    .line 303
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->prepareCampaignDetails(Lorg/json/JSONObject;)V

    .line 305
    :try_start_0
    const-string v0, "campaignId"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->campaignID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0032

    .line 97
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->setContentView(I)V

    .line 98
    const-string p1, "Neo Campaign"

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 101
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->initWebView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 533
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->closeActivity_Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 534
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->neocampaigndata_Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 536
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public sendInitialData(Lorg/json/JSONObject;)V
    .locals 4

    .line 286
    const-string v0, ""

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->prepareCampaignDetails(Lorg/json/JSONObject;)V

    .line 288
    :try_start_0
    const-string v1, "rootUrl"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v1, "baseUrl"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v1, "rootUrlWithPort"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    const-string v1, "accessToken"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    const-string v1, "clientId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string v1, "clientSecret"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    const-string v1, "neointIdentityService"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    const-string v0, "IsApprover"

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "IsAppover"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
