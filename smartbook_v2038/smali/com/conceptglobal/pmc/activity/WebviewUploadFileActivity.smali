.class public Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WebviewUploadFileActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$Client;,
        Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;
    }
.end annotation


# static fields
.field private static final FILECHOOSER_RESULTCODE:I = 0x1

.field private static final INPUT_FILE_REQUEST_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WebviewUploadFileActivity"


# instance fields
.field from:Ljava/lang/String;

.field private mCameraPhotoPath:Ljava/lang/String;

.field private mCapturedImageURI:Landroid/net/Uri;

.field private mFilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private webSettings:Landroid/webkit/WebSettings;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->mCapturedImageURI:Landroid/net/Uri;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->from:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->createImageFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->mCameraPhotoPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->mCameraPhotoPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;)Landroid/net/Uri;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->mCapturedImageURI:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$502(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->mCapturedImageURI:Landroid/net/Uri;

    return-object p1
.end method

.method private createImageFile()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JPEG_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 157
    const-string v2, ".jpg"

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 56
    iget-object v1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_2

    const/4 p1, 0x0

    if-nez p3, :cond_1

    .line 65
    iget-object p2, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->mCameraPhotoPath:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 66
    new-array p3, v0, [Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p3, p1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 71
    new-array p3, v0, [Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p3, p1

    goto :goto_0

    :cond_2
    move-object p3, v1

    .line 75
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p1, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 76
    iput-object v1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-void

    .line 57
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 107
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0046

    .line 108
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->setContentView(I)V

    .line 109
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->from:Ljava/lang/String;

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->from:Ljava/lang/String;

    const-string v0, "Abscond"

    const-string v1, "ApproveResignations"

    const-string v2, "UserCreation"

    const-string v3, ")"

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "Create User ("

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->from:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "ApproveResignations ("

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->from:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "Abscond ("

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    :cond_3
    :goto_0
    const p1, 0x7f090601

    .line 122
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->webView:Landroid/webkit/WebView;

    .line 123
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->webSettings:Landroid/webkit/WebSettings;

    const/4 v3, 0x1

    .line 124
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 125
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 126
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 127
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$Client;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$Client;-><init>(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;)V

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 128
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity$ChromeClient;-><init>(Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;)V

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 140
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->from:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 141
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlUserCreation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->from:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 143
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlApproveResignations()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->from:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 145
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebViewUrlAbscond()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 328
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object p1, p0, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 266
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 316
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/activity/WebviewUploadFileActivity;->finish()V

    .line 323
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
