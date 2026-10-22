.class public Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;
.super Ljava/lang/Object;
.source "ApplicationPatchNew.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;
    }
.end annotation


# instance fields
.field abs:Ljava/lang/String;

.field private mApplicationDownloader:Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mStatus:Z

.field private mURL:Ljava/lang/String;

.field private tmpWritten:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->abs:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->tmpWritten:I

    .line 48
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->mPackageName:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->mPath:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->mURL:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;Ljava/io/File;)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->deleteDirectory(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->applicationPatch()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->afterApplicationpatching()V

    return-void
.end method

.method private afterApplicationpatching()V
    .locals 5

    const-string v0, "logcat -d -f "

    .line 189
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Applicationpatch.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->abs:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->mContext:Landroid/content/Context;

    const-string v2, "There is no application to download"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 204
    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 205
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->abs:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 207
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->abs:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 209
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 211
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private applicationPatch()Ljava/lang/String;
    .locals 8

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->mURL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->getPatchUpdatesURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->mURL:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->abs:Ljava/lang/String;

    .line 129
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->abs:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->abs:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    .line 133
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 137
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 139
    invoke-virtual {v1, v2, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v4, v5

    .line 141
    iput v4, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->tmpWritten:I

    .line 142
    const-string v5, "Download complete.."

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->tmpWritten:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 145
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 146
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const-string v0, "Yes"

    goto :goto_1

    .line 149
    :catch_0
    const-string v0, "No"

    :goto_1
    return-object v0
.end method

.method private deleteDirectory(Ljava/io/File;)Z
    .locals 3

    .line 156
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 161
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 162
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->deleteDirectory(Ljava/io/File;)Z

    goto :goto_1

    .line 165
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method private getPatchUpdatesURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 178
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

    .line 59
    new-instance p1, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;-><init>(Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$1;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew;->mApplicationDownloader:Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;

    const/4 v0, 0x0

    .line 60
    new-array v0, v0, [Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/sync/ApplicationPatchNew$ApplicationDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
