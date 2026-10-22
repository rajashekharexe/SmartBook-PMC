.class public Lcom/conceptglobal/pmc/sync/DbPatch;
.super Ljava/lang/Object;
.source "DbPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DbPatch"

.field private static dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;


# instance fields
.field private isFromLogin:Z

.field public isPatchAvailable:Z

.field private isUpdateStatusBar:Z

.field private logoutApplication:Z

.field private mContext:Landroid/content/Context;

.field private mRequestFinishListner:Lcom/conceptglobal/pmc/interfaces/OnRequestFinishListener;

.field public mTask:Lcom/conceptglobal/pmc/sync/DbPatch$DbPatchAsyncTask;

.field private successQueryIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public webServices:Lcom/conceptglobal/pmc/asynctask/WebService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/sync/DbPatch;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->isPatchAvailable:Z

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->successQueryIds:Ljava/util/List;

    .line 81
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    .line 82
    iput-boolean p2, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->isUpdateStatusBar:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->isPatchAvailable:Z

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->successQueryIds:Ljava/util/List;

    .line 86
    iput-boolean p3, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->isFromLogin:Z

    .line 87
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    .line 88
    iput-boolean p2, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->isUpdateStatusBar:Z

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/sync/DbPatch;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/sync/DbPatch;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->isUpdateStatusBar:Z

    return p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/sync/DbPatch;)Lcom/conceptglobal/pmc/interfaces/OnRequestFinishListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->mRequestFinishListner:Lcom/conceptglobal/pmc/interfaces/OnRequestFinishListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/conceptglobal/pmc/sync/DbPatch;Lcom/conceptglobal/pmc/interfaces/OnRequestFinishListener;)Lcom/conceptglobal/pmc/interfaces/OnRequestFinishListener;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->mRequestFinishListner:Lcom/conceptglobal/pmc/interfaces/OnRequestFinishListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/sync/DbPatch;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->isFromLogin:Z

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/sync/DbPatch;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->logoutApplication:Z

    return p0
.end method

.method private getPatchUpdate()Ljava/lang/String;
    .locals 18

    move-object/from16 v1, p0

    .line 114
    const-string v2, "REMOTEFLUSH"

    const-string v3, "/"

    const-string v4, "data"

    const-string v5, "DbPatch"

    .line 116
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 118
    :try_start_0
    new-instance v7, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;

    invoke-direct {v7}, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;-><init>()V

    .line 119
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 120
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;->setPDAID(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v8, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 122
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v9

    iput-object v9, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->webServices:Lcom/conceptglobal/pmc/asynctask/WebService;

    .line 123
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 125
    :try_start_1
    iget-object v10, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->webServices:Lcom/conceptglobal/pmc/asynctask/WebService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v12

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v12

    invoke-virtual {v12}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodDMLPatches()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v7, v11, v9}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 127
    new-instance v9, Ljava/io/StringReader;

    invoke-direct {v9, v7}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v10, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v8, v9, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 129
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v7

    const-string v10, "AUTHORISED"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 131
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    .line 132
    new-instance v7, Lcom/conceptglobal/pmc/sync/DbPatch$1;

    invoke-direct {v7, v1}, Lcom/conceptglobal/pmc/sync/DbPatch$1;-><init>(Lcom/conceptglobal/pmc/sync/DbPatch;)V

    .line 133
    invoke-virtual {v7}, Lcom/conceptglobal/pmc/sync/DbPatch$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 134
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    new-instance v12, Ljava/io/StringReader;

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v12, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x0

    if-eqz v7, :cond_b

    .line 135
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-lez v9, :cond_b

    .line 138
    :try_start_2
    sget-object v9, Lcom/conceptglobal/pmc/sync/DbPatch;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const/4 v12, 0x0

    .line 139
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_a

    .line 140
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;

    .line 141
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->getPatchType()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DML"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v15, ""

    if-eqz v14, :cond_0

    .line 142
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v14

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->getStrQuery()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11, v9}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_4

    .line 143
    :cond_0
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->getPatchType()Ljava/lang/String;

    move-result-object v11

    const-string v14, "CUSTOM"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 144
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->getStrQuery()Ljava/lang/String;

    move-result-object v11

    const-string v14, "UPLOADLOGDB"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 145
    new-instance v11, Lcom/conceptglobal/pmc/asynctask/SendLogDbAsynctask;

    iget-object v14, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v11, v14, v6}, Lcom/conceptglobal/pmc/asynctask/SendLogDbAsynctask;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    new-array v6, v8, [Ljava/lang/String;

    invoke-virtual {v11, v6}, Lcom/conceptglobal/pmc/asynctask/SendLogDbAsynctask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_4

    .line 146
    :cond_1
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->getStrQuery()Ljava/lang/String;

    move-result-object v6

    const-string v11, "UPLOADPMCDB"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 147
    new-instance v6, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;

    iget-object v11, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v6, v11, v14}, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    new-array v11, v8, [Ljava/lang/String;

    invoke-virtual {v6, v11}, Lcom/conceptglobal/pmc/asynctask/SendPmcDbAsynctask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_4

    .line 148
    :cond_2
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->getStrQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 149
    new-instance v6, Landroid/content/Intent;

    iget-object v11, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    const-class v14, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-direct {v6, v11, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    const-string v11, "callbackActivity"

    invoke-virtual {v6, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v11, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_4

    .line 152
    :cond_3
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->getStrQuery()Ljava/lang/String;

    move-result-object v6

    const-string v11, "CLEARPMCDB"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 154
    new-instance v6, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getDatabaseFolder()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->deleteDir(Ljava/io/File;)Z

    .line 155
    iget-object v6, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->deleteCache(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 157
    :cond_4
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->getStrQuery()Ljava/lang/String;

    move-result-object v6

    const-string v11, "CLEARLOGDB"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_5

    .line 159
    :try_start_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDBLog;

    move-result-object v6

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/common/Queries;->getClearLogQuery()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 161
    :try_start_5
    invoke-static {v5, v6, v8}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto/16 :goto_4

    .line 163
    :cond_5
    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->getStrQuery()Ljava/lang/String;

    move-result-object v6

    const-string v11, "CHECKUSERDETAILS"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 164
    new-instance v6, Lcom/conceptglobal/pmc/model/ActivateUserDetails;

    invoke-direct {v6}, Lcom/conceptglobal/pmc/model/ActivateUserDetails;-><init>()V

    .line 165
    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    .line 166
    iget-object v14, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDeviceIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/conceptglobal/pmc/model/ActivateUserDetails;->setIMEINumber(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v14

    invoke-virtual {v14}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMobileNumber()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/conceptglobal/pmc/model/ActivateUserDetails;->setStrMobile(Ljava/lang/String;)V

    .line 169
    const-string v14, "UPDATE"

    invoke-virtual {v6, v14}, Lcom/conceptglobal/pmc/model/ActivateUserDetails;->setStrName(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v6, v15}, Lcom/conceptglobal/pmc/model/ActivateUserDetails;->setDeviceModel(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v6, v15}, Lcom/conceptglobal/pmc/model/ActivateUserDetails;->setOSVersion(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v6, v15}, Lcom/conceptglobal/pmc/model/ActivateUserDetails;->setMode(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v11, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 175
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 178
    const-string v14, " Get User details"

    if-eqz v6, :cond_6

    .line 179
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v10

    .line 180
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v16
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v17, v2

    :try_start_7
    invoke-virtual/range {v16 .. v16}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodActivatePMC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {v11, v6, v2}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v17, v2

    :goto_1
    move-object v2, v0

    .line 182
    :try_start_8
    invoke-static {v14, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v17, v2

    goto :goto_2

    :goto_3
    if-eqz v2, :cond_9

    .line 184
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v8, 0x5

    if-le v6, v8, :cond_9

    .line 187
    :try_start_9
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v8, Ljava/io/StringReader;

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v6, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    invoke-virtual {v2, v8, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    .line 189
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getUserid()I

    move-result v6

    if-eqz v6, :cond_9

    .line 192
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateUserDetails(Lcom/conceptglobal/pmc/model/GetUserDetailsModel;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getUserrolemapping()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_7

    .line 194
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v6

    .line 195
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteUserRolemapping()Ljava/lang/String;

    move-result-object v8

    .line 194
    invoke-virtual {v6, v8}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 196
    invoke-static {v2}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertUserRoleMapping(Lcom/conceptglobal/pmc/model/GetUserDetailsModel;)V

    .line 198
    :cond_7
    iget-boolean v6, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->isFromLogin:Z

    if-eqz v6, :cond_9

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getActive()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/GetUserDetailsModel;->getActive()Ljava/lang/String;

    move-result-object v2

    const-string v6, "N"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    .line 199
    iput-boolean v2, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->logoutApplication:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v2, v0

    const/4 v6, 0x0

    .line 204
    :try_start_a
    invoke-static {v14, v2, v6}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_5

    :cond_8
    :goto_4
    move-object/from16 v17, v2

    :cond_9
    :goto_5
    const/4 v2, 0x1

    .line 224
    iput-boolean v2, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->isPatchAvailable:Z

    .line 225
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->successQueryIds:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->getQueryId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v17

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 231
    :cond_a
    :try_start_b
    sget-object v2, Lcom/conceptglobal/pmc/sync/DbPatch;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V
    :try_end_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    const/4 v11, 0x0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 228
    :try_start_c
    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100251

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 229
    invoke-static {v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 231
    :try_start_d
    sget-object v2, Lcom/conceptglobal/pmc/sync/DbPatch;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V
    :try_end_d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 235
    :goto_6
    :try_start_e
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->storeFOName(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 237
    :try_start_f
    invoke-static {v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 231
    :goto_7
    sget-object v3, Lcom/conceptglobal/pmc/sync/DbPatch;->dbInstance:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 232
    throw v2

    .line 240
    :cond_b
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100250

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x0

    .line 241
    iput-boolean v2, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->isPatchAvailable:Z

    :goto_8
    if-eqz v11, :cond_e

    .line 243
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_e

    .line 244
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10025b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto/16 :goto_a

    :cond_c
    const/4 v4, 0x0

    goto :goto_9

    .line 247
    :cond_d
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UNAUTHORISED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 248
    invoke-virtual {v8}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid Token"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 250
    new-instance v2, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v3, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 251
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 253
    const-string v2, "com.conceptglobal.pmc.sync.DbPatch"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 254
    const-string v3, "getPatchUpdate"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v6, 0x1

    .line 255
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 256
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 257
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    :goto_9
    move-object v11, v4

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 268
    :try_start_10
    invoke-static {v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100251

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 265
    invoke-static {v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100251

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v2, v0

    .line 262
    invoke-static {v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100251

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 272
    invoke-static {v5, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    iget-object v2, v1, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100251

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_e
    :goto_a
    return-object v11
.end method

.method private sendAcknowledgeToServer()Ljava/lang/String;
    .locals 9

    .line 289
    const-string v0, "DbPatch"

    const-string v1, "fail"

    .line 290
    new-instance v2, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;-><init>()V

    .line 291
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 292
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;->setPDAID(Ljava/lang/String;)V

    .line 293
    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->successQueryIds:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;->setQueryIDs(Ljava/util/List;)V

    .line 294
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v4

    .line 295
    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 297
    :try_start_0
    iget-object v5, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->webServices:Lcom/conceptglobal/pmc/asynctask/WebService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodUpdateDMLPatch()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6, v4}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 301
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AUTHORISED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 303
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "data"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 304
    const-string v0, "sucsess"

    move-object v1, v0

    goto/16 :goto_0

    .line 307
    :cond_0
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UNAUTHORISED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid Token"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    new-instance v3, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v4, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 311
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 313
    const-string v3, "com.conceptglobal.pmc.sync.DbPatch"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 314
    const-string v4, "getPatchUpdate"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x1

    .line 315
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 316
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 317
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 348
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 350
    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 344
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 346
    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v2

    .line 340
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 342
    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v2

    .line 336
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 338
    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception v2

    .line 332
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 334
    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_5
    move-exception v2

    .line 328
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 330
    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_6
    move-exception v2

    .line 326
    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_7
    move-exception v2

    .line 323
    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method private updatePatchStatusTable()V
    .locals 5

    .line 281
    const-string v0, "DbPatch"

    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "DbPatchCompleted"

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->updatePatchDetailsQry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 283
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public startDbPatch()Ljava/lang/String;
    .locals 3

    .line 93
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dbptch sync start Time"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0}, Lcom/conceptglobal/pmc/sync/DbPatch;->getPatchUpdate()Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->successQueryIds:Ljava/util/List;

    const-string v1, "nopatch"

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/conceptglobal/pmc/common/ConstantsPMC;->isRequestCancelled:Z

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/conceptglobal/pmc/sync/DbPatch;->successQueryIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/conceptglobal/pmc/sync/DbPatch;->sendAcknowledgeToServer()Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/sync/DbPatch;->updatePatchStatusTable()V

    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "dbptch sync end Time"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
