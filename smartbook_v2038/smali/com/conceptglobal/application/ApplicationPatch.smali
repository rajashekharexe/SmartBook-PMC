.class public Lcom/conceptglobal/application/ApplicationPatch;
.super Ljava/lang/Object;
.source "ApplicationPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/application/ApplicationPatch$ApplicationDownloader;
    }
.end annotation


# instance fields
.field abs:Ljava/lang/String;

.field private mApplicationDownloader:Lcom/conceptglobal/application/ApplicationPatch$ApplicationDownloader;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mStatus:Z

.field private mURL:Ljava/lang/String;

.field private tmpWritten:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/conceptglobal/application/ApplicationPatch;->abs:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/conceptglobal/application/ApplicationPatch;->tmpWritten:I

    .line 38
    iput-object p1, p0, Lcom/conceptglobal/application/ApplicationPatch;->mPackageName:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/conceptglobal/application/ApplicationPatch;->mPath:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/conceptglobal/application/ApplicationPatch;->mURL:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/conceptglobal/application/ApplicationPatch;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$0(Lcom/conceptglobal/application/ApplicationPatch;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/conceptglobal/application/ApplicationPatch;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1(Lcom/conceptglobal/application/ApplicationPatch;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/conceptglobal/application/ApplicationPatch;->mStatus:Z

    return p0
.end method

.method static synthetic access$2(Lcom/conceptglobal/application/ApplicationPatch;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/conceptglobal/application/ApplicationPatch;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3(Lcom/conceptglobal/application/ApplicationPatch;Ljava/io/File;)Z
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lcom/conceptglobal/application/ApplicationPatch;->deleteDirectory(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4(Lcom/conceptglobal/application/ApplicationPatch;)Ljava/lang/String;
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/conceptglobal/application/ApplicationPatch;->applicationPatch()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5(Lcom/conceptglobal/application/ApplicationPatch;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/conceptglobal/application/ApplicationPatch;->afterApplicationpatching()V

    return-void
.end method

.method private afterApplicationpatching()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/conceptglobal/application/ApplicationPatch;->abs:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 179
    iget-boolean v0, p0, Lcom/conceptglobal/application/ApplicationPatch;->mStatus:Z

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/conceptglobal/application/ApplicationPatch;->mContext:Landroid/content/Context;

    const-string v1, "There is no application to download"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/application/ApplicationPatch;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 184
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 185
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/conceptglobal/application/ApplicationPatch;->abs:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    iget-object v0, p0, Lcom/conceptglobal/application/ApplicationPatch;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private applicationPatch()Ljava/lang/String;
    .locals 8

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/application/ApplicationPatch;->mURL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/conceptglobal/application/ApplicationPatch;->getPatchUpdatesURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/conceptglobal/application/ApplicationPatch;->mURL:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/application/ApplicationPatch;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/application/ApplicationPatch;->mPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/application/ApplicationPatch;->abs:Ljava/lang/String;

    .line 116
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/conceptglobal/application/ApplicationPatch;->abs:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/conceptglobal/application/ApplicationPatch;->abs:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    .line 120
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 124
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 131
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 132
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    const-string v0, "Yes"

    goto :goto_1

    .line 125
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v4, v5

    .line 127
    iput v4, p0, Lcom/conceptglobal/application/ApplicationPatch;->tmpWritten:I

    .line 128
    const-string v5, "Download complete:::::::"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    const-string v0, "No"

    :goto_1
    return-object v0
.end method

.method private deleteDirectory(Ljava/io/File;)Z
    .locals 3

    .line 142
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 147
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    goto :goto_2

    .line 148
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/conceptglobal/application/ApplicationPatch;->deleteDirectory(Ljava/io/File;)Z

    goto :goto_1

    .line 151
    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_3
    :goto_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method private getPatchUpdatesURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 162
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

    .line 46
    iput-boolean p1, p0, Lcom/conceptglobal/application/ApplicationPatch;->mStatus:Z

    .line 47
    new-instance p1, Lcom/conceptglobal/application/ApplicationPatch$ApplicationDownloader;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/application/ApplicationPatch$ApplicationDownloader;-><init>(Lcom/conceptglobal/application/ApplicationPatch;Lcom/conceptglobal/application/ApplicationPatch$ApplicationDownloader;)V

    iput-object p1, p0, Lcom/conceptglobal/application/ApplicationPatch;->mApplicationDownloader:Lcom/conceptglobal/application/ApplicationPatch$ApplicationDownloader;

    const/4 v0, 0x0

    .line 48
    new-array v0, v0, [Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/application/ApplicationPatch$ApplicationDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
