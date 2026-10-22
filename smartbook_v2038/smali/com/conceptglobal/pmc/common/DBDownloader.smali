.class public Lcom/conceptglobal/pmc/common/DBDownloader;
.super Ljava/lang/Object;
.source "DBDownloader.java"


# instance fields
.field private byteWritten:I

.field private downloadprg:Landroid/widget/ProgressBar;

.field private isDownloaded:Z

.field private parent:Landroid/app/Activity;

.field private tmpWritten:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/common/DBDownloader;->isDownloaded:Z

    .line 33
    iput v0, p0, Lcom/conceptglobal/pmc/common/DBDownloader;->tmpWritten:I

    .line 34
    iput v0, p0, Lcom/conceptglobal/pmc/common/DBDownloader;->byteWritten:I

    .line 44
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/DBDownloader;->parent:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ProgressBar;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/common/DBDownloader;->isDownloaded:Z

    .line 33
    iput v0, p0, Lcom/conceptglobal/pmc/common/DBDownloader;->tmpWritten:I

    .line 34
    iput v0, p0, Lcom/conceptglobal/pmc/common/DBDownloader;->byteWritten:I

    .line 38
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/DBDownloader;->parent:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lcom/conceptglobal/pmc/common/DBDownloader;->downloadprg:Landroid/widget/ProgressBar;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/common/DBDownloader;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/common/DBDownloader;->isDownloaded:Z

    return p0
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/common/DBDownloader;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/common/DBDownloader;->isDownloaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/common/DBDownloader;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/common/DBDownloader;->dbDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/common/DBDownloader;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/common/DBDownloader;->unZipDatabaseFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/common/DBDownloader;)Landroid/app/Activity;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/conceptglobal/pmc/common/DBDownloader;->parent:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/common/DBDownloader;Lcom/conceptglobal/pmc/model/GetUserDetailsModel;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/common/DBDownloader;->insertUserDetals(Lcom/conceptglobal/pmc/model/GetUserDetailsModel;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/common/DBDownloader;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/conceptglobal/pmc/common/DBDownloader;->deleteTerritoryData()V

    return-void
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/common/DBDownloader;)Landroid/widget/ProgressBar;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/conceptglobal/pmc/common/DBDownloader;->downloadprg:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private dbDownload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/common/DBDownloader;->deleteDirectory(Ljava/io/File;)Z

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/common/DBDownloader;->downloadDataBase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private deleteTerritoryData()V
    .locals 0

    # Data preservation: do not delete downloaded dealers, farmers, or villages
    return-void
.end method

.method private downloadDataBase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 174
    const-string v0, "SDCard Path"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/common/DBDownloader;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 182
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 183
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    new-instance p2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x800

    .line 188
    new-array p1, p1, [B

    .line 189
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 190
    invoke-virtual {p2, p1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 191
    iget v4, p0, Lcom/conceptglobal/pmc/common/DBDownloader;->byteWritten:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/conceptglobal/pmc/common/DBDownloader;->byteWritten:I

    .line 192
    iput v4, p0, Lcom/conceptglobal/pmc/common/DBDownloader;->tmpWritten:I

    mul-int/lit8 v4, v4, 0x64

    .line 193
    div-int/2addr v4, v1

    .line 194
    iget-object v3, p0, Lcom/conceptglobal/pmc/common/DBDownloader;->parent:Landroid/app/Activity;

    new-instance v5, Lcom/conceptglobal/pmc/common/DBDownloader$2;

    invoke-direct {v5, p0, v4}, Lcom/conceptglobal/pmc/common/DBDownloader$2;-><init>(Lcom/conceptglobal/pmc/common/DBDownloader;I)V

    invoke-virtual {v3, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 203
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 204
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 206
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "No File Exists"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v2

    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    throw p1
.end method

.method private insertUserDetals(Lcom/conceptglobal/pmc/model/GetUserDetailsModel;Ljava/lang/String;)V
    .locals 2

    .line 229
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    .line 230
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteUserDetails()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 231
    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertUserDetails(Lcom/conceptglobal/pmc/model/GetUserDetailsModel;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getActive()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->updateUserImEiStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    .line 233
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getUserrolemapping()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getUserrolemapping()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_0

    .line 235
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    .line 236
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteUserRolemapping()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 237
    invoke-static {p1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertUserRoleMapping(Lcom/conceptglobal/pmc/model/GetUserDetailsModel;)V

    .line 240
    :cond_0
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getTerritoryList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 241
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getTerritoryList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_1

    .line 242
    invoke-static {p1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertTerritoryList(Lcom/conceptglobal/pmc/model/GetUserDetailsModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 252
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private unZipDatabaseFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 143
    const-string v0, "UnZipping"

    const-string v1, "---DB"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 148
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 149
    new-instance p2, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x800

    .line 151
    new-array v2, v2, [B

    .line 153
    :goto_0
    invoke-virtual {p2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 154
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 155
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 156
    :goto_1
    invoke-virtual {p2, v2}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 157
    invoke-virtual {v4, v2, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 159
    :cond_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 160
    invoke-virtual {p2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p2}, Ljava/util/zip/ZipInputStream;->close()V

    .line 163
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method


# virtual methods
.method public dataBaseDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;Lcom/conceptglobal/pmc/model/GetUserDetailsModel;Ljava/lang/String;)V
    .locals 11

    move-object v8, p0

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, v8, Lcom/conceptglobal/pmc/common/DBDownloader;->isDownloaded:Z

    .line 51
    :try_start_0
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/conceptglobal/pmc/common/DBDownloader$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/conceptglobal/pmc/common/DBDownloader$1;-><init>(Lcom/conceptglobal/pmc/common/DBDownloader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/GetUserDetailsModel;Ljava/lang/String;Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 68
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    iget-boolean v0, v8, Lcom/conceptglobal/pmc/common/DBDownloader;->isDownloaded:Z

    move-object v1, p4

    invoke-interface {p4, v0}, Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;->isComplete(Z)V

    :goto_0
    return-void
.end method

.method public deleteDirectory(Ljava/io/File;)Z
    .locals 3

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 122
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 123
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/common/DBDownloader;->deleteDirectory(Ljava/io/File;)Z

    goto :goto_1

    .line 126
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method public getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 220
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
