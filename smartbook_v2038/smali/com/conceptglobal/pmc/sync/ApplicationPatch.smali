.class public Lcom/conceptglobal/pmc/sync/ApplicationPatch;
.super Ljava/lang/Object;
.source "ApplicationPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationPatch"


# instance fields
.field public URLConn:Ljava/net/HttpURLConnection;

.field private appPatchResponse:Ljava/lang/String;

.field public appPatchURL:Ljava/lang/String;

.field private appSize:I

.field private applicationpath:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field public isReqCancelled:Z

.field public mTask:Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;

.field private patchStatus:Ljava/lang/String;

.field private response:Ljava/lang/String;

.field private tmpWritten:I

.field private urlString:Ljava/lang/String;

.field public webServices:Lcom/conceptglobal/pmc/asynctask/WebService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->applicationpath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->appSize:I

    .line 51
    iput v1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->tmpWritten:I

    .line 55
    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->URLConn:Ljava/net/HttpURLConnection;

    .line 57
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->isReqCancelled:Z

    .line 63
    const-string v0, "NoPatchAvailable"

    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->patchStatus:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->patchStatus:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/sync/ApplicationPatch;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->appPatchResponse:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/sync/ApplicationPatch;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->updatePatchStatusTable(Ljava/lang/String;)V

    return-void
.end method

.method private downloadLatestApkFromServer(Z)Ljava/lang/String;
    .locals 11

    .line 165
    const-string v0, "No"

    const-string v1, "ApplicationPatch"

    .line 166
    iget-object v2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->appPatchURL:Ljava/lang/String;

    .line 175
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->appPatchURL:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    iput-object v3, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->URLConn:Ljava/net/HttpURLConnection;

    .line 179
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    iput v3, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->appSize:I

    if-lez v3, :cond_5

    .line 182
    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->URLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 183
    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->appPatchURL:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 185
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 187
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 189
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->applicationpath:Ljava/lang/String;

    .line 190
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->applicationpath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 195
    :cond_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->applicationpath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x400

    .line 196
    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 201
    :cond_2
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 202
    sget-boolean v8, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    if-eqz v8, :cond_3

    .line 203
    new-instance p1, Ljava/io/File;

    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->appPatchURL:Ljava/lang/String;

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->deleteDir(Ljava/io/File;)Z

    goto :goto_1

    .line 207
    :cond_3
    invoke-virtual {v2, v4, v5, v7}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v6, v7

    .line 209
    iput v6, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->tmpWritten:I

    if-eqz p1, :cond_2

    .line 210
    iget-object v7, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->mTask:Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;

    if-eqz v7, :cond_2

    .line 211
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v9, v6, 0x64

    iget v10, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->appSize:I

    div-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/sync/ApplicationPatch$ApplicationPatchAsyncTask;->showProgress(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 215
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 216
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloaed -"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->appSize:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->tmpWritten:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    const-string p1, "Yes"

    move-object v0, p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception -"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-object v0
.end method

.method private updatePatchStatusTable(Ljava/lang/String;)V
    .locals 4

    .line 157
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    const-string v1, "2"

    const-string v2, "AppPatch"

    iget-object v3, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->applicationpath:Ljava/lang/String;

    invoke-static {v1, v2, p1, v3}, Lcom/conceptglobal/pmc/common/Queries;->updatePatchDetailsQry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 159
    const-string v0, "ApplicationPatch"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public startPatchSync(Z)V
    .locals 9

    .line 76
    const-string v0, "\""

    const-string v1, "\\"

    const-string v2, "ApplicationPatch"

    const-string v3, ""

    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodAppPatch()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->urlString:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v4

    iput-object v4, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->webServices:Lcom/conceptglobal/pmc/asynctask/WebService;

    const/4 v4, 0x0

    .line 82
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v5

    .line 83
    sget-boolean v6, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, "PatchAvailable"

    if-nez v6, :cond_5

    .line 84
    :try_start_1
    iget-object v6, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->webServices:Lcom/conceptglobal/pmc/asynctask/WebService;

    iget-object v8, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->urlString:Ljava/lang/String;

    invoke-virtual {v6, v8, v5}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendGetRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->response:Ljava/lang/String;

    .line 85
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    new-instance v6, Ljava/io/StringReader;

    iget-object v8, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->response:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v8, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v5, v6, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 86
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->response:Ljava/lang/String;

    .line 87
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v6

    const-string v8, "AUTHORISED"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 89
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->response:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v5, 0x4

    if-le p1, v5, :cond_5

    .line 91
    :try_start_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->response:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->response:Ljava/lang/String;

    .line 92
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->response:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v5, "SameVersion"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->response:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v5, "failed"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->response:Ljava/lang/String;

    const-string v5, "Not Authorised"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->response:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->response:Ljava/lang/String;

    .line 100
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 102
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->appPatchURL:Ljava/lang/String;

    .line 104
    iput-object v7, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->patchStatus:Ljava/lang/String;

    goto :goto_2

    .line 96
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->response:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->appPatchResponse:Ljava/lang/String;

    goto :goto_2

    .line 94
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->response:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->appPatchResponse:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 114
    :try_start_3
    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 118
    :cond_4
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNAUTHORISED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid Token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 121
    new-instance v0, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->context:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 122
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 124
    const-string v0, "com.conceptglobal.pmc.sync.ApplicationPatch"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 125
    const-string v1, "startPatchSync"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 128
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->patchStatus:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v0, "NoPatchAvailable"

    if-eqz p1, :cond_7

    .line 135
    :try_start_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->appPatchURL:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 136
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->appPatchURL:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget p1, p0, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->appSize:I

    int-to-long v5, p1

    cmp-long p1, v0, v5

    if-nez p1, :cond_8

    .line 138
    invoke-direct {p0, v7}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->updatePatchStatusTable(Ljava/lang/String;)V

    goto :goto_3

    .line 141
    :cond_6
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->updatePatchStatusTable(Ljava/lang/String;)V

    goto :goto_3

    .line 144
    :cond_7
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/sync/ApplicationPatch;->updatePatchStatusTable(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 147
    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :cond_8
    :goto_3
    sput-boolean v4, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    return-void
.end method
