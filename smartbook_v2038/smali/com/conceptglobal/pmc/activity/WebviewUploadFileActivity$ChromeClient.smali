.class public Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebviewUploadFileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;->this$0:Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 169
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;->this$0:Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->access$000(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;)Landroid/webkit/ValueCallback;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;->this$0:Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->access$000(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;)Landroid/webkit/ValueCallback;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;->this$0:Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->access$002(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 173
    new-instance p1, Landroid/content/Intent;

    const-string p2, "output"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;->this$0:Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;->this$0:Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->access$100(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    :try_start_1
    const-string v1, "PhotoPath"

    iget-object v2, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;->this$0:Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->access$200(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, p3

    .line 182
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to create Image File"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v0, :cond_2

    .line 186
    iget-object p3, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;->this$0:Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->access$202(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    .line 187
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    move-object p3, p1

    .line 193
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    const-string p2, "android.intent.category.OPENABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string p2, "image/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    .line 198
    new-array v1, v0, [Landroid/content/Intent;

    aput-object p3, v1, p2

    goto :goto_2

    .line 200
    :cond_3
    new-array v1, p2, [Landroid/content/Intent;

    .line 202
    :goto_2
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.CHOOSER"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    const-string p3, "android.intent.extra.INTENT"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 204
    const-string p1, "android.intent.extra.TITLE"

    const-string p3, "Image Chooser"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string p1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;->this$0:Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;

    invoke-virtual {p1, p2, v0}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 247
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 212
    iget-object p2, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;->this$0:Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->access$402(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 215
    new-instance p1, Ljava/io/File;

    sget-object p2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 216
    invoke-static {p2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    const-string v0, "AndroidExampleFolder"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 221
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 224
    :cond_0
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "IMG_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;->this$0:Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->access$502(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 230
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    iget-object p2, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;->this$0:Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->access$500(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "output"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 233
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v0, "image/*"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v0, "Image Chooser"

    invoke-static {p2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x1

    .line 239
    new-array v1, v0, [Landroid/os/Parcelable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 242
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;->this$0:Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;

    invoke-virtual {p1, p2, v0}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method
