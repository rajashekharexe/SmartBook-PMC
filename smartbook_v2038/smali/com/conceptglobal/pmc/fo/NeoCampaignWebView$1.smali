.class Lcom/conceptglobal/pmc/fo/NeoCampaignWebView$1;
.super Landroid/webkit/WebViewClient;
.source "NeoCampaignWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->initWebView()V
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

    .line 134
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView$1;->this$0:Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView$1;->this$0:Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->access$000(Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView$1;->this$0:Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;->access$002(Lcom/conceptglobal/pmc/fo/NeoCampaignWebView;Z)Z

    .line 142
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceError;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method
