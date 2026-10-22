.class public Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;
.super Landroid/os/AsyncTask;
.source "AutoAppPatchAsync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private error:Ljava/lang/Exception;

.field private isPprogressBarRequired:Z

.field private urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->error:Ljava/lang/Exception;

    .line 32
    iput-object p1, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->urlString:Ljava/lang/String;

    .line 34
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->isPprogressBarRequired:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6

    .line 48
    const-string p1, "data"

    const-string v0, "status"

    const-string v1, "AutoAppPatchAsync"

    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v2

    const/4 v3, 0x0

    .line 51
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v4

    .line 52
    iget-object v5, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->urlString:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendGetRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v3, :cond_2

    .line 57
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x4

    if-le v2, v4, :cond_2

    .line 59
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AUTHORISED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UNAUTHORISED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 71
    const-string p1, "statusMessage"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid Token"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 74
    new-instance p1, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v0, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {p1, v0, v2}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 75
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 76
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->error:Ljava/lang/Exception;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    :try_start_2
    iput-object p1, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->error:Ljava/lang/Exception;

    .line 87
    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 91
    :cond_1
    const-string p1, "APPLICATION_PATCH"

    iget-object v0, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->error:Ljava/lang/Exception;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 101
    iput-object p1, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->error:Ljava/lang/Exception;

    .line 102
    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 97
    iput-object p1, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->error:Ljava/lang/Exception;

    .line 98
    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 94
    iput-object p1, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->error:Ljava/lang/Exception;

    .line 95
    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6

    .line 110
    const-string v0, "android.intent.action.VIEW"

    .line 0
    const-string v1, "market://details?id="

    .line 110
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 111
    iget-boolean v2, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->isPprogressBarRequired:Z

    if-eqz v2, :cond_0

    .line 112
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->dismissProgressDialog()V

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->error:Ljava/lang/Exception;

    const/4 v3, 0x0

    if-nez v2, :cond_5

    if-eqz p1, :cond_5

    .line 115
    const-string v2, "\\"

    const-string v4, ""

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 116
    const-string v2, "\""

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SameVersion"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "failed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 119
    :cond_1
    const-string v2, "Not Authorised"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->context:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 128
    :catch_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://play.google.com/store/apps/details?id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 120
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->context:Landroid/content/Context;

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 118
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->context:Landroid/content/Context;

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 142
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoginActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 143
    new-instance p1, Lcom/conceptglobal/pmc/sync/DbPatch;

    iget-object v0, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/conceptglobal/pmc/sync/DbPatch;-><init>(Landroid/content/Context;Z)V

    .line 144
    new-instance v0, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;

    invoke-direct {v0, p1}, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;-><init>(Lcom/conceptglobal/pmc/sync/DbPatch;)V

    iput-object v0, p1, Lcom/conceptglobal/pmc/sync/DbPatch;->mTask:Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;

    .line 145
    iget-object p1, p1, Lcom/conceptglobal/pmc/sync/DbPatch;->mTask:Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_6
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->isPprogressBarRequired:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/conceptglobal/pmc/asynctask/AutoAppPatchAsync;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->showProgressDialog(Landroid/content/Context;)V

    .line 42
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
