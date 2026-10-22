.class public Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;
.super Ljava/lang/Object;
.source "AutoApplicationPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/sync/AutoApplicationPatch$ApplicationDownloader;
    }
.end annotation


# instance fields
.field abs:Ljava/lang/String;

.field private mApplicationDownloader:Lcom/conceptglobal/pmc/sync/AutoApplicationPatch$ApplicationDownloader;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mStatus:Z

.field private mURL:Ljava/lang/String;

.field private tmpWritten:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->abs:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->tmpWritten:I

    .line 41
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->mPackageName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->mPath:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->mURL:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->mStatus:Z

    return p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;Ljava/io/File;)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->deleteDirectory(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->applicationPatch()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->afterApplicationpatching()V

    return-void
.end method

.method private afterApplicationpatching()V
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->abs:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 123
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->mStatus:Z

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->mContext:Landroid/content/Context;

    const-string v1, "There is no application to download"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 130
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".Provider"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->abs:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 131
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x40

    .line 132
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 133
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private applicationPatch()Ljava/lang/String;
    .locals 8

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->mURL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->getPatchUpdatesURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->mURL:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->abs:Ljava/lang/String;

    .line 68
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->abs:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->abs:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    .line 70
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 73
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 74
    invoke-virtual {v1, v2, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v4, v5

    .line 76
    iput v4, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->tmpWritten:I

    .line 77
    const-string v5, "Download complete.."

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->tmpWritten:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 81
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 82
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    const-string v0, "Yes"

    goto :goto_1

    .line 84
    :catch_0
    const-string v0, "No"

    :goto_1
    return-object v0
.end method

.method private deleteDirectory(Ljava/io/File;)Z
    .locals 3

    .line 91
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 97
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 98
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->deleteDirectory(Ljava/io/File;)Z

    goto :goto_1

    .line 101
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method private getPatchUpdatesURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 113
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

    .line 48
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->mStatus:Z

    .line 49
    new-instance p1, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch$ApplicationDownloader;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch$ApplicationDownloader;-><init>(Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;Lcom/conceptglobal/pmc/sync/AutoApplicationPatch$1;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch;->mApplicationDownloader:Lcom/conceptglobal/pmc/sync/AutoApplicationPatch$ApplicationDownloader;

    const/4 v0, 0x0

    .line 50
    new-array v0, v0, [Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/sync/AutoApplicationPatch$ApplicationDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
