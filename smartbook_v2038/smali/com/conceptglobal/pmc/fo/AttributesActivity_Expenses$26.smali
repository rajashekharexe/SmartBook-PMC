.class Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$26;
.super Landroid/webkit/WebViewClient;
.source "AttributesActivity_Expenses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private running:I

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V
    .locals 0

    .line 3223
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$26;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    .line 3224
    iput p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$26;->running:I

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 3229
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$26;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$4300(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Z)V

    .line 3231
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method
