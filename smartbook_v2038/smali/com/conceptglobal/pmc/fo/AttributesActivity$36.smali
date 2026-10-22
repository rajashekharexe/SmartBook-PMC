.class Lcom/conceptglobal/pmc/fo/AttributesActivity$36;
.super Landroid/webkit/WebViewClient;
.source "AttributesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private running:I

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V
    .locals 0

    .line 4118
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$36;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    .line 4119
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$36;->running:I

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 4124
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$36;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$5500(Lcom/conceptglobal/pmc/fo/AttributesActivity;Z)V

    .line 4126
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method
