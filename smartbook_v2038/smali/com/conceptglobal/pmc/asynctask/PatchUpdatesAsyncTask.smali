.class public Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;
.super Landroid/os/AsyncTask;
.source "PatchUpdatesAsyncTask.java"


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


# static fields
.field private static final TAG:Ljava/lang/String; = "Patch Update"

.field private static dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;


# instance fields
.field private context:Landroid/content/Context;

.field private error:Ljava/lang/Exception;

.field private progressBarRequired:Z

.field private successQueryIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->error:Ljava/lang/Exception;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->successQueryIds:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->context:Landroid/content/Context;

    .line 42
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->progressBarRequired:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9

    .line 57
    const-string p1, "Patch Update"

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 61
    :try_start_0
    new-instance v1, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;-><init>()V

    .line 62
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 63
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;->setPDAID(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v3

    .line 66
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 68
    :try_start_1
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

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodDMLPatches()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5, v4}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v2, v3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 70
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 71
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AUTHORISED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, ""

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 72
    :try_start_2
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 73
    new-instance v1, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask$1;-><init>(Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;)V

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 74
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 75
    sget-object v2, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 77
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    .line 78
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ge v3, v6, :cond_1

    .line 80
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->getStrQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 81
    iget-object v6, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->successQueryIds:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->getQueryId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 83
    :try_start_4
    iget-object v7, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100251

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    iput-object v6, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->error:Ljava/lang/Exception;

    .line 85
    invoke-static {p1, v6}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100250

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_3

    .line 92
    iget-object v1, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10025b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 95
    :cond_2
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UNAUTHORISED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid Token"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    new-instance v1, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v2, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->context:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 101
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 103
    const-string v1, "com.conceptglobal.pmc.asynctask.PatchUpdatesAsyncTask"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 105
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 106
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 107
    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    :cond_3
    :goto_2
    :try_start_5
    sget-object v1, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    :goto_3
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 118
    :try_start_6
    iput-object v1, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->error:Ljava/lang/Exception;

    .line 119
    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 121
    :try_start_7
    sget-object v1, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_2
    move-exception v1

    .line 115
    :try_start_8
    iput-object v1, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->error:Ljava/lang/Exception;

    .line 116
    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 121
    :try_start_9
    sget-object v1, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    :catch_3
    move-exception v1

    .line 112
    :try_start_a
    iput-object v1, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->error:Ljava/lang/Exception;

    .line 113
    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 121
    :try_start_b
    sget-object v1, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    goto :goto_3

    :goto_4
    sget-object v2, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 122
    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    move-exception v1

    .line 124
    iput-object v1, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->error:Ljava/lang/Exception;

    .line 125
    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5

    .line 133
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 134
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->progressBarRequired:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->dismissProgressDialog()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->successQueryIds:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 138
    new-instance v0, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;-><init>()V

    .line 139
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 140
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;->setPDAID(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->successQueryIds:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;->setQueryIDs(Ljava/util/List;)V

    .line 142
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v1

    .line 144
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask$2;-><init>(Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;Lcom/conceptglobal/pmc/asynctask/WebService;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 159
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->context:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->error:Ljava/lang/Exception;

    if-eqz p1, :cond_5

    .line 164
    instance-of v1, p1, Lorg/apache/http/client/ClientProtocolException;

    const-string v2, "Patch Update"

    if-eqz v1, :cond_3

    .line 165
    iget-object p1, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100253

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 166
    iget-object p1, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->error:Ljava/lang/Exception;

    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 167
    :cond_3
    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_4

    .line 168
    iget-object p1, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10025d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 169
    iget-object p1, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->error:Ljava/lang/Exception;

    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 171
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1001c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 172
    iget-object p1, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->error:Ljava/lang/Exception;

    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->progressBarRequired:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/conceptglobal/pmc/asynctask/PatchUpdatesAsyncTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->showProgressDialog(Landroid/content/Context;)V

    .line 50
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
