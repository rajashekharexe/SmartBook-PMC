.class Lcom/conceptglobal/pmc/fragments/WebViewFragment$1;
.super Landroid/webkit/WebChromeClient;
.source "WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/WebViewFragment;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/WebViewFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/WebViewFragment;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/WebViewFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/WebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    return-void
.end method
