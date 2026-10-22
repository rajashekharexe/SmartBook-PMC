.class public Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;
.super Landroid/os/AsyncTask;
.source "SendPmcDbAsynctask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SendPmcDb"

.field private static dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;


# instance fields
.field private context:Landroid/content/Context;

.field dbUploadStatus:Z

.field private error:Ljava/lang/Exception;

.field isRemortDataFlush:Z

.field private progressBarRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->error:Ljava/lang/Exception;

    .line 38
    iput-object p1, p0, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->context:Landroid/content/Context;

    .line 39
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->progressBarRequired:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->error:Ljava/lang/Exception;

    .line 42
    iput-object p1, p0, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->context:Landroid/content/Context;

    .line 43
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->progressBarRequired:Z

    .line 44
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->isRemortDataFlush:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 8

    .line 50
    const-string p1, "Status"

    const-string v0, "/"

    const-string v1, "SendPmcDb"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWebApiToken()Ljava/lang/String;

    move-result-object v3

    .line 51
    new-instance v4, Lcom/conceptglobal/pmc/utils/FileZipping;

    iget-object v5, p0, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/conceptglobal/pmc/utils/FileZipping;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getRootFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getImageFiledate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_LOG.zip"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/conceptglobal/pmc/database/DataBaseHandler;->datapath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Lcom/conceptglobal/pmc/utils/FileZipping;->zip_File(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 61
    :try_start_1
    new-instance v4, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v4}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 62
    const-string v6, "pdadb"

    new-instance v7, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-direct {v7, v0}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 63
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDBUploadURL()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v6

    invoke-virtual {v6, v4, v0, v3}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestMultipartwithWebApiToken(Lorg/apache/http/entity/mime/MultipartEntity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 67
    const-string v3, "Unauthorized"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_1

    const-string v3, "Unauthorised"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    :try_start_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 86
    iput-boolean v6, p0, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->dbUploadStatus:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 90
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 91
    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    new-instance p1, Lcom/conceptglobal/pmc/sync/GetToken;

    invoke-direct {p1, v2, v6}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 71
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 72
    iget-object p1, p0, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->context:Landroid/content/Context;

    const-string v0, "Db upload failed. Re-try"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 95
    :cond_2
    :goto_1
    new-instance p1, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 98
    :try_start_4
    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 100
    :goto_2
    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    .line 103
    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 110
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 111
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->isRemortDataFlush:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->dbUploadStatus:Z

    if-eqz p1, :cond_0

    .line 113
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getDatabaseFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->deleteDir(Ljava/io/File;)Z

    .line 114
    iget-object p1, p0, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->deleteCache(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
