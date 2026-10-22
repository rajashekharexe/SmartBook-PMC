.class public Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;
.super Landroid/os/AsyncTask;
.source "MasterSyncAsyncTask.java"


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
.field private static final TAG:Ljava/lang/String; = "MasterSyncAsyncTask"


# instance fields
.field private arrQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/SyncErrorLogModel;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private keysBuilder:Ljava/lang/StringBuilder;

.field private modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

.field private obj:Ljava/lang/String;

.field private progressBarRequired:Z

.field private response:Ljava/lang/String;

.field private sbQueryBuilder:Ljava/lang/StringBuilder;

.field private urlString:Ljava/lang/String;

.field private valuesBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->context:Landroid/content/Context;

    .line 51
    iput-boolean p2, p0, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->progressBarRequired:Z

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->arrQueries:Ljava/util/List;

    .line 53
    new-instance p1, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 26

    move-object/from16 v1, p0

    .line 67
    const-string v2, ")"

    const-string v3, "("

    const-string v4, "application/json"

    const-string v5, "MasterSyncAsyncTask"

    .line 0
    const-string v6, ""

    .line 68
    iget-object v7, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x0

    .line 71
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    iput-object v8, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v9

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v10

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodMasterSync()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->urlString:Ljava/lang/String;

    .line 74
    iget-object v8, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/common/Queries;->getGetMasterversionRecords()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 76
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLMASTERVERSION()Ljava/lang/String;

    move-result-object v9

    .line 74
    invoke-static {v8, v9}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->ConvertToXMLFormat(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 78
    new-instance v9, Lcom/conceptglobal/pmc/model/SendModel;

    invoke-direct {v9}, Lcom/conceptglobal/pmc/model/SendModel;-><init>()V

    .line 79
    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    .line 80
    invoke-virtual {v9, v8}, Lcom/conceptglobal/pmc/model/SendModel;->setXmlTableList(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v10, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->obj:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 87
    iput-object v7, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1a

    move-object v9, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_15

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 83
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f1001bb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :try_start_3
    invoke-static {v5, v8}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 86
    :try_start_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 87
    iput-object v7, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_18

    .line 89
    :goto_0
    :try_start_5
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 90
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    iget-object v11, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->urlString:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 91
    new-instance v11, Lorg/apache/http/entity/StringEntity;

    iget-object v12, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->obj:Ljava/lang/String;

    invoke-direct {v11, v12}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 93
    const-string v11, "Accept"

    invoke-virtual {v10, v11, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v11, "Content-type"

    invoke-virtual {v10, v11, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v4, "IMEI"

    iget-object v11, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDeviceIMEIMultiple(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-interface {v8, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 97
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 98
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 99
    const-string v8, "UTF-8"

    invoke-static {v4, v8}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->response:Ljava/lang/String;

    .line 100
    const-string v8, "\\"

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 101
    iget-object v4, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->response:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_16

    if-eqz v4, :cond_b

    :try_start_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x3

    if-le v4, v8, :cond_b

    .line 102
    new-instance v4, Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->response:Ljava/lang/String;

    invoke-direct {v4, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12

    const-string v13, "\'"

    if-eqz v11, :cond_8

    .line 104
    :try_start_7
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 105
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    const/4 v15, 0x0

    .line 106
    :goto_2
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v15, v7, :cond_7

    .line 107
    new-instance v7, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-direct {v7}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;-><init>()V

    iput-object v7, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->sbQueryBuilder:Ljava/lang/StringBuilder;

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->keysBuilder:Ljava/lang/StringBuilder;

    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->valuesBuilder:Ljava/lang/StringBuilder;

    .line 111
    iget-object v7, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v7, v11}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setTableName(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLMASTERVERSION()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_12

    const-string v12, ","

    const/16 v17, 0x1

    if-eqz v7, :cond_3

    .line 113
    :try_start_8
    iget-object v7, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->sbQueryBuilder:Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    const-string v4, "UPDATE "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " SET "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v20

    const/16 v21, 0x1

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12

    if-eqz v22, :cond_2

    .line 120
    :try_start_9
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_13

    move-object/from16 v23, v10

    :try_start_a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_13

    move-object/from16 v22, v9

    .line 122
    :try_start_b
    const-string v9, "TableName"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_11

    move-object/from16 v24, v6

    const-string v6, " = \'"

    if-eqz v9, :cond_0

    add-int/lit8 v21, v21, 0x1

    .line 124
    :try_start_c
    iget-object v9, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v9, v10}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setColumnName(Ljava/lang/String;)V

    .line 125
    iget-object v9, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_11

    move-object/from16 v25, v2

    :try_start_d
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setSourceID(Ljava/lang/String;)V

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " WHERE "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v25, v2

    goto/16 :goto_6

    :cond_0
    move-object/from16 v25, v2

    add-int/lit8 v21, v21, 0x1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_11

    :goto_4
    move/from16 v2, v21

    .line 134
    :try_start_e
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    if-ne v2, v6, :cond_1

    .line 137
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 138
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_11

    add-int/lit8 v6, v18, -0x1

    move/from16 v18, v2

    const/4 v2, 0x0

    :try_start_f
    invoke-virtual {v9, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v2, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_11

    .line 143
    :try_start_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_11

    move-object v7, v2

    move-object v8, v6

    const/16 v21, 0x1

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v7, v2

    move/from16 v21, v18

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_1
    move/from16 v18, v2

    move/from16 v21, v18

    goto :goto_8

    :catch_4
    move-exception v0

    move/from16 v18, v2

    :goto_5
    move-object v2, v0

    move/from16 v21, v18

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v24, v6

    goto :goto_6

    :catch_7
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v24, v6

    move-object/from16 v22, v9

    goto :goto_6

    :catch_8
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v24, v6

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    :goto_6
    move-object v2, v0

    .line 148
    :goto_7
    :try_start_11
    invoke-static {v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v6, v24

    move-object/from16 v2, v25

    goto/16 :goto_3

    :cond_2
    move-object/from16 v24, v6

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    const/4 v9, 0x0

    goto/16 :goto_c

    :cond_3
    move-object/from16 v25, v2

    move-object/from16 v19, v4

    move-object/from16 v24, v6

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    .line 152
    iget-object v2, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->sbQueryBuilder:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert or replace into "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v2, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->valuesBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v2, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->keysBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 157
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    if-eqz v7, :cond_6

    .line 159
    :try_start_12
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 160
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_4

    .line 162
    iget-object v9, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v9, v7}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setColumnName(Ljava/lang/String;)V

    .line 164
    :cond_4
    iget-object v9, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->keysBuilder:Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 166
    iget-object v9, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->valuesBuilder:Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_11

    move-object/from16 v18, v2

    :try_start_13
    const-string v2, "\',"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v6, v8, :cond_5

    .line 168
    iget-object v2, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v2, v7}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setSourceID(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_11

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :catch_9
    move-exception v0

    goto :goto_a

    :catch_a
    move-exception v0

    move-object/from16 v18, v2

    :goto_a
    move-object v2, v0

    .line 172
    :try_start_14
    invoke-static {v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    move-object/from16 v2, v18

    goto :goto_9

    .line 175
    :cond_6
    iget-object v2, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->keysBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    iget-object v4, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->valuesBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    iget-object v7, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v6, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->sbQueryBuilder:Ljava/lang/StringBuilder;

    const-string v7, "values"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v6, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :goto_c
    iget-object v4, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    iget-object v6, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->setQuery(Ljava/lang/String;)V

    .line 184
    iget-object v4, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->arrQueries:Ljava/util/List;

    iget-object v6, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->modelSync:Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v4, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->sbQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v19

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v6, v24

    const/4 v8, 0x3

    goto/16 :goto_2

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v24, v6

    move-object/from16 v22, v9

    const/4 v9, 0x0

    .line 188
    iget-object v2, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->arrQueries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_11
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10

    if-eqz v2, :cond_a

    .line 190
    :try_start_15
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-object/from16 v9, v22

    const/4 v12, 0x0

    .line 191
    :goto_d
    :try_start_16
    iget-object v2, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->arrQueries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-ge v12, v2, :cond_9

    .line 193
    :try_start_17
    iget-object v2, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->arrQueries:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    move-object/from16 v6, v24

    goto :goto_10

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 196
    :try_start_18
    iget-object v3, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v14

    iget-object v4, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->arrQueries:Ljava/util/List;

    .line 197
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getColumnName()Ljava/lang/String;

    move-result-object v4
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    move-object/from16 v6, v24

    :try_start_19
    invoke-virtual {v4, v13, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->arrQueries:Ljava/util/List;

    .line 198
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getSourceID()Ljava/lang/String;

    move-result-object v16

    iget-object v4, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->arrQueries:Ljava/util/List;

    .line 199
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    iget-object v4, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->arrQueries:Ljava/util/List;

    .line 200
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 201
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLMASTERVERSION()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v2

    .line 196
    invoke-virtual/range {v14 .. v20}, Lcom/conceptglobal/pmc/common/Queries;->insertIntoSyncErrorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    goto :goto_f

    :catch_c
    move-exception v0

    goto :goto_e

    :catch_d
    move-exception v0

    move-object/from16 v6, v24

    :goto_e
    move-object v3, v0

    .line 203
    :try_start_1a
    invoke-static {v5, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    :goto_f
    iget-object v3, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1001b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 206
    invoke-static {v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_e
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    :goto_10
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v24, v6

    goto/16 :goto_d

    .line 213
    :cond_9
    :try_start_1b
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    const/4 v2, 0x0

    .line 214
    iput-object v2, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_19
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_18

    goto/16 :goto_1a

    :catch_e
    move-exception v0

    move-object v2, v0

    goto :goto_11

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v22

    goto :goto_12

    :catch_f
    move-exception v0

    move-object v2, v0

    move-object/from16 v9, v22

    .line 210
    :goto_11
    :try_start_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f1001b8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 211
    :try_start_1d
    invoke-static {v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 213
    :try_start_1e
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    const/4 v2, 0x0

    .line 214
    iput-object v2, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->database:Landroid/database/sqlite/SQLiteDatabase;

    move-object v9, v6

    goto/16 :goto_1a

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_12

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v6, v9

    .line 213
    :goto_12
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    const/4 v3, 0x0

    .line 214
    iput-object v3, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 215
    throw v2
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1a

    :cond_a
    move-object/from16 v9, v22

    goto/16 :goto_1a

    :catch_10
    move-exception v0

    goto :goto_13

    :catch_11
    move-exception v0

    goto :goto_14

    :catch_12
    move-exception v0

    move-object/from16 v22, v9

    :goto_13
    move-object v2, v0

    move-object/from16 v6, v22

    goto :goto_17

    :catch_13
    move-exception v0

    move-object/from16 v22, v9

    :goto_14
    move-object v2, v0

    move-object/from16 v6, v22

    goto/16 :goto_19

    :cond_b
    move-object/from16 v22, v9

    .line 218
    :try_start_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_1f} :catch_15
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_14

    move-object/from16 v6, v22

    :try_start_20
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1001bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1a

    :catch_14
    move-exception v0

    move-object/from16 v6, v22

    goto :goto_16

    :catch_15
    move-exception v0

    move-object/from16 v6, v22

    goto :goto_18

    :catch_16
    move-exception v0

    move-object v6, v9

    goto :goto_16

    :catch_17
    move-exception v0

    move-object v6, v9

    goto :goto_18

    :catch_18
    move-exception v0

    move-object v2, v0

    move-object v6, v9

    goto :goto_17

    :catch_19
    move-exception v0

    move-object v2, v0

    move-object v6, v9

    goto :goto_19

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v6, v9

    .line 86
    :goto_15
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    const/4 v3, 0x0

    .line 87
    iput-object v3, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 88
    throw v2
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1a

    :catch_1a
    move-exception v0

    :goto_16
    move-object v2, v0

    .line 224
    :goto_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f1001b9

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 225
    invoke-static {v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    :catch_1b
    move-exception v0

    :goto_18
    move-object v2, v0

    .line 221
    :goto_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f1001ba

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 222
    invoke-static {v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 228
    :cond_c
    iget-object v2, v1, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100153

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_1a
    return-object v9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 236
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 237
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->progressBarRequired:Z

    if-eqz v0, :cond_0

    .line 238
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->dismissProgressDialog()V

    :cond_0
    if-eqz p1, :cond_1

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-object p1, p0, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100255

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f100252

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->progressBarRequired:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/conceptglobal/pmc/asynctask/MasterSyncAsyncTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->showProgressDialog(Landroid/content/Context;)V

    .line 61
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
