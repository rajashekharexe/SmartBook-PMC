.class Lcom/conceptglobal/pmc/fo/NeoCampaignWebView$2;
.super Landroid/content/BroadcastReceiver;
.source "NeoCampaignWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView$2;->this$0:Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 226
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView$2;->this$0:Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->access$100(Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView$2;->this$0:Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->access$100(Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 229
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 231
    :try_start_0
    const-string v0, "method"

    const-string v1, "onActivityFinish"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v0, "campaignId"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :catch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView$2;->this$0:Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->access$200(Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:sendDataToNeoCampaign(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\')"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method
