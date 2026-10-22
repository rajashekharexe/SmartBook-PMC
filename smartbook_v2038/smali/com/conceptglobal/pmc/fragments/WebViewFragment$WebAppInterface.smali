.class public Lcom/conceptglobal/pmc/fragments/WebViewFragment$WebAppInterface;
.super Ljava/lang/Object;
.source "WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/WebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/WebViewFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/WebViewFragment;Landroid/content/Context;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/WebViewFragment$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/fragments/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/WebViewFragment$WebAppInterface;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public handleMessageFromFlutter(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Message from Flutter via JavaScript: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebAppInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/WebViewFragment$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/fragments/WebViewFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/WebViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/fragments/WebViewFragment$WebAppInterface$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/conceptglobal/pmc/fragments/WebViewFragment$WebAppInterface$$ExternalSyntheticLambda0;-><init>(Lcom/conceptglobal/pmc/fragments/WebViewFragment$WebAppInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$handleMessageFromFlutter$0$com-conceptglobal-pmc-fragments-WebViewFragment$WebAppInterface(Ljava/lang/String;)V
    .locals 2

    .line 264
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 265
    const-string p1, "method"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "getInitialData"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/WebViewFragment$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/fragments/WebViewFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/WebViewFragment;->access$000(Lcom/conceptglobal/pmc/fragments/WebViewFragment;)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/WebViewFragment$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/fragments/WebViewFragment;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/WebViewFragment;->access$100(Lcom/conceptglobal/pmc/fragments/WebViewFragment;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 271
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
