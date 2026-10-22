.class public Lcom/conceptglobal/pmc/patch/Patch;
.super Ljava/lang/Object;
.source "Patch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;
    }
.end annotation


# instance fields
.field abs:Ljava/lang/String;

.field private mApplicationDownloader:Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mStatus:Z

.field private mURL:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private tmpWritten:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/conceptglobal/pmc/patch/Patch;->abs:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/conceptglobal/pmc/patch/Patch;->tmpWritten:I

    .line 44
    iput-object p1, p0, Lcom/conceptglobal/pmc/patch/Patch;->mPackageName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/conceptglobal/pmc/patch/Patch;->mPath:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/conceptglobal/pmc/patch/Patch;->mURL:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/conceptglobal/pmc/patch/Patch;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/patch/Patch;)Landroid/widget/ProgressBar;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/conceptglobal/pmc/patch/Patch;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/patch/Patch;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/conceptglobal/pmc/patch/Patch;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/patch/Patch;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/patch/Patch;->mStatus:Z

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/patch/Patch;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/conceptglobal/pmc/patch/Patch;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/patch/Patch;Ljava/io/File;)Z
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/patch/Patch;->deleteDirectory(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/patch/Patch;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/conceptglobal/pmc/patch/Patch;->applicationPatch()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/patch/Patch;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/conceptglobal/pmc/patch/Patch;->afterApplicationpatching()V

    return-void
.end method

.method private afterApplicationpatching()V
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/conceptglobal/pmc/patch/Patch;->abs:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 140
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/patch/Patch;->mStatus:Z

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/conceptglobal/pmc/patch/Patch;->mContext:Landroid/content/Context;

    const-string v1, "There is no application to download"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/patch/Patch;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 145
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    iget-object v0, p0, Lcom/conceptglobal/pmc/patch/Patch;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/patch/Patch;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".Provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/conceptglobal/pmc/patch/Patch;->abs:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 148
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x40

    .line 149
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 150
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 151
    iget-object v0, p0, Lcom/conceptglobal/pmc/patch/Patch;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private applicationPatch()Ljava/lang/String;
    .locals 9

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/patch/Patch;->mURL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/patch/Patch;->getPatchUpdatesURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/conceptglobal/pmc/patch/Patch;->mURL:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/conceptglobal/pmc/patch/Patch;->mPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/patch/Patch;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/patch/Patch;->abs:Ljava/lang/String;

    .line 72
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/pmc/patch/Patch;->abs:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/conceptglobal/pmc/patch/Patch;->abs:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x400

    .line 74
    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 77
    :cond_0
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 78
    invoke-virtual {v2, v3, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v5, v6

    .line 80
    iput v5, p0, Lcom/conceptglobal/pmc/patch/Patch;->tmpWritten:I

    .line 81
    const-string v6, "Download complete::::::"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/conceptglobal/pmc/patch/Patch;->tmpWritten:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "bytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v6, p0, Lcom/conceptglobal/pmc/patch/Patch;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v6, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v6

    .line 85
    iget v7, p0, Lcom/conceptglobal/pmc/patch/Patch;->tmpWritten:I

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v6

    .line 86
    iget-object v6, p0, Lcom/conceptglobal/pmc/patch/Patch;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/conceptglobal/pmc/LoginActivity;

    new-instance v8, Lcom/conceptglobal/pmc/patch/Patch$1;

    invoke-direct {v8, p0, v7}, Lcom/conceptglobal/pmc/patch/Patch$1;-><init>(Lcom/conceptglobal/pmc/patch/Patch;I)V

    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 98
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 99
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    const-string v0, "Yes"

    goto :goto_1

    .line 101
    :catch_0
    const-string v0, "No"

    :goto_1
    return-object v0
.end method

.method private deleteDirectory(Ljava/io/File;)Z
    .locals 3

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 114
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 115
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/patch/Patch;->deleteDirectory(Ljava/io/File;)Z

    goto :goto_1

    .line 118
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method private getPatchUpdatesURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 130
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public callApplicationPatch(Z)V
    .locals 1

    .line 51
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/patch/Patch;->mStatus:Z

    .line 52
    new-instance p1, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;-><init>(Lcom/conceptglobal/pmc/patch/Patch;Lcom/conceptglobal/pmc/patch/Patch$1;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/patch/Patch;->mApplicationDownloader:Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;

    const/4 v0, 0x0

    .line 53
    new-array v0, v0, [Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/patch/Patch$ApplicationDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/conceptglobal/pmc/patch/Patch;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method
