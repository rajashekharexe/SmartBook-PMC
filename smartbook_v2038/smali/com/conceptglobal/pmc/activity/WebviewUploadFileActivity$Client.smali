.class public Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$Client;
.super Landroid/webkit/WebViewClient;
.source "WebviewUploadFileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Client"
.end annotation


# instance fields
.field progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$Client;->this$0:Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 303
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$Client;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$Client;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 p1, 0x0

    .line 305
    iput-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$Client;->progressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 308
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 292
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$Client;->progressDialog:Landroid/app/ProgressDialog;

    if-nez p1, :cond_0

    .line 293
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object p2, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$Client;->this$0:Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$Client;->progressDialog:Landroid/app/ProgressDialog;

    .line 294
    const-string p2, "Loading..."

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 295
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$Client;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 274
    const-string v0, "mailto:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 278
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 277
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 283
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method
