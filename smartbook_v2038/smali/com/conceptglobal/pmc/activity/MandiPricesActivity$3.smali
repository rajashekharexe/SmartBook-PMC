.class Lcom/conceptglobal/pmc/activity/MandiPricesActivity$3;
.super Landroid/webkit/WebViewClient;
.source "MandiPricesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/activity/MandiPricesActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private running:I

.field final synthetic this$0:Lcom/conceptglobal/pmc/activity/MandiPricesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/activity/MandiPricesActivity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$3;->this$0:Lcom/conceptglobal/pmc/activity/MandiPricesActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    .line 86
    iput p1, p0, Lcom/conceptglobal/pmc/activity/MandiPricesActivity$3;->running:I

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method
