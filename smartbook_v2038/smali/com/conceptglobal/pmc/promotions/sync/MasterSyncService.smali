.class public Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;
.super Ljava/lang/Object;
.source "MasterSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService$MasterSyncAsyncTask;
    }
.end annotation


# instance fields
.field private ackpromotionmodel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/AckPromotion;",
            ">;"
        }
    .end annotation
.end field

.field private apiInterface:Lcom/conceptglobal/pmc/promotions/retrofit/ApiInterface;

.field private arrQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private modelSync:Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

.field private promotionmodel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field serverlocation:Ljava/lang/String;

.field private syncStatus:Z

.field tableClass:Lcom/conceptglobal/pmc/promotions/sync/TableClass;

.field tableModel:Lcom/conceptglobal/pmc/promotions/models/TableModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->syncStatus:Z

    .line 68
    new-instance v0, Lcom/conceptglobal/pmc/promotions/sync/TableClass;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/sync/TableClass;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->tableClass:Lcom/conceptglobal/pmc/promotions/sync/TableClass;

    .line 69
    new-instance v0, Lcom/conceptglobal/pmc/promotions/models/TableModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/models/TableModel;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->tableModel:Lcom/conceptglobal/pmc/promotions/models/TableModel;

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->serverlocation:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->promotionmodel:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->ackpromotionmodel:Ljava/util/List;

    .line 73
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {}, Lcom/conceptglobal/pmc/promotions/retrofit/ApiClient;->getInterfaceService()Lcom/conceptglobal/pmc/promotions/retrofit/ApiInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->apiInterface:Lcom/conceptglobal/pmc/promotions/retrofit/ApiInterface;

    return-void
.end method

.method private getCorrespondingInt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 431
    const-string v0, "video/mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 432
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 434
    :cond_0
    const-string v0, "pdf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x7

    .line 435
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 437
    :cond_1
    const-string v0, "htmltext"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    .line 438
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 441
    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method private getOneYearLess(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 400
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 402
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 403
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 404
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 405
    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 406
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method private getOneYearMore(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 416
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 418
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 419
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 420
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    .line 421
    invoke-virtual {v2, v1, v1}, Ljava/util/Calendar;->add(II)V

    .line 422
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 425
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method private sendSyncToServer(Ljava/lang/String;)V
    .locals 3

    .line 539
    :try_start_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 542
    :try_start_1
    const-string v1, "json"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string p1, "pdaId"

    new-instance v1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 547
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 551
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 555
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    const/4 p1, 0x0

    .line 615
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->syncStatus:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public callMasterSyncAsyncTask()V
    .locals 2

    .line 79
    new-instance v0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService$MasterSyncAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService$MasterSyncAsyncTask;-><init>(Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService$1;)V

    const/4 v1, 0x0

    .line 80
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService$MasterSyncAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public doMasterSync()Ljava/lang/String;
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/utils/NetworkUtils;->isDataConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Lcom/conceptglobal/pmc/promotions/models/Promotion;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/models/Promotion;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyContentSyncTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "01-01-2000 00:00:00.000"

    invoke-static {v1, v2, v3}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/models/Promotion;->setLastDate(Ljava/lang/String;)V

    .line 136
    new-instance v1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/models/Promotion;->setPdaId(Ljava/lang/String;)V

    .line 138
    new-instance v1, Lcom/conceptglobal/pmc/promotions/models/SendPromotionModel;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/promotions/models/SendPromotionModel;-><init>()V

    .line 139
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->promotionmodel:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->promotionmodel:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/promotions/models/SendPromotionModel;->setPromotion(Ljava/util/List;)V

    .line 141
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->apiInterface:Lcom/conceptglobal/pmc/promotions/retrofit/ApiInterface;

    const-string v2, "60A4422E-22B1-4D32-9DFC-AA01C6C11DAC"

    invoke-interface {v0, v2, v1}, Lcom/conceptglobal/pmc/promotions/retrofit/ApiInterface;->getPromotionsData(Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/models/SendPromotionModel;)Lretrofit2/Call;

    move-result-object v0

    .line 153
    :try_start_0
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v1

    .line 155
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    invoke-virtual {v0}, Lretrofit2/Response;->message()Ljava/lang/String;

    const/16 v0, 0xc8

    if-ne v1, v0, :cond_0

    .line 158
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->onMasterSyncDataReceived(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->revokeLocalContent(Landroid/content/Context;)V

    goto :goto_0

    .line 162
    :cond_0
    const-string v0, "Error occured"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMasterSyncDataReceived(Ljava/lang/String;)V
    .locals 30

    move-object/from16 v1, p0

    .line 174
    const-string v2, "/"

    const-string v3, ")"

    const-string v4, "("

    const-string v5, "null"

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->arrQueries:Ljava/util/List;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    const-string v6, "CategoryMaster"

    const-string v7, "CategoryId"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v6, "ContentCategoryMapping"

    const-string v7, "CCMapping"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v6, "ContentMaster"

    const-string v8, "ContentId"

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v6, "ContentTypeMaster"

    const-string v8, "ContentTypeId"

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v6, "ContentUserMapping"

    const-string v8, "CUMapping"

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v6, "LangauageUserMapping"

    const-string v8, "LUMappingId"

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v6, "LanguageMaster"

    const-string v8, "LanguageId"

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "onMasterSyncDataRec"

    const-string v6, "--interface called---"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v8, "UTF-8"

    move-object/from16 v9, p1

    invoke-static {v9, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 189
    const-string v8, "data"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 194
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_15

    .line 199
    :try_start_1
    const-string v8, "{}"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_15

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_15

    .line 200
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    const-string v10, "Masters"

    const-string v12, ""

    if-eqz v0, :cond_d

    .line 203
    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string v14, "\\."

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 207
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    const/4 v6, 0x0

    .line 208
    :goto_2
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 209
    new-instance v0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;-><init>()V

    iput-object v0, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->modelSync:Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    .line 210
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v7

    .line 212
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x1

    .line 214
    aget-object v0, v14, v16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v19, v8

    add-int/lit8 v8, v18, -0x1

    move-object/from16 v18, v9

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v8, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->modelSync:Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-virtual {v8, v0}, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->setTableName(Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "INSERT OR REPLACE INTO ["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget-object v9, v14, v8

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v15, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 221
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e

    if-eqz v0, :cond_c

    .line 223
    :try_start_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    move-object/from16 v21, v4

    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    move-object/from16 v20, v8

    .line 233
    :try_start_5
    const-string v8, "Seqeunce"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 234
    const-string v0, "Sequence"

    .line 236
    :cond_1
    const-string v8, "CCMappingId"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object/from16 v0, v17

    .line 244
    :cond_2
    const-string v8, "ThumbNail"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    if-eqz v8, :cond_3

    .line 245
    :try_start_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 246
    new-instance v8, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v22, v9

    :try_start_7
    iget-object v9, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getBaseUrlForVideos()Ljava/lang/String;

    move-result-object v8

    .line 247
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v22, v9

    goto/16 :goto_8

    :cond_3
    move-object/from16 v22, v9

    .line 250
    :goto_4
    const-string v8, "ContentServerLocation"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v4, :cond_5

    .line 252
    iput-object v4, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->serverlocation:Ljava/lang/String;

    .line 253
    new-instance v8, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v9, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getBaseUrlForVideos()Ljava/lang/String;

    move-result-object v8

    .line 254
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_4
    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    .line 257
    iput-object v8, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->serverlocation:Ljava/lang/String;

    .line 261
    :goto_5
    const-string v9, "ContentDeviceLocation"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 264
    new-instance v9, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v4

    iget-object v4, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getFilesDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->mediaDir:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 267
    array-length v8, v4

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_7

    aget-object v24, v4, v9

    move-object/from16 v25, v4

    .line 269
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move/from16 v24, v8

    .line 270
    const-string v8, "filename"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-object/from16 v26, v14

    :try_start_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v8, "serverlocation"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object/from16 v27, v15

    :try_start_9
    iget-object v15, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->serverlocation:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move/from16 v29, v6

    const/16 v16, 0x1

    add-int/lit8 v6, v28, 0x1

    :try_start_a
    invoke-virtual {v15, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v6, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->serverlocation:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 273
    iget-object v6, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->serverlocation:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v14, 0x1

    add-int/2addr v8, v14

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 274
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getFilesDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->mediaDir:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :cond_6
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v24

    move-object/from16 v4, v25

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    move/from16 v6, v29

    goto/16 :goto_6

    :catch_3
    move-exception v0

    move/from16 v29, v6

    goto/16 :goto_d

    :catch_4
    move-exception v0

    move/from16 v29, v6

    goto/16 :goto_c

    :cond_7
    move/from16 v29, v6

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    move-object/from16 v4, v23

    goto :goto_7

    :cond_8
    move-object/from16 v23, v4

    move/from16 v29, v6

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    .line 281
    :goto_7
    const-string v6, "recoverystatus"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 282
    const-string v6, "MasterSyncLineId"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 283
    iget-object v6, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->modelSync:Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-virtual {v6, v10}, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->setRemarks(Ljava/lang/String;)V

    .line 284
    iget-object v6, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->modelSync:Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-virtual {v6, v0}, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->setColumnName(Ljava/lang/String;)V

    .line 285
    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->modelSync:Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->setSourceID(Ljava/lang/Integer;)V

    goto :goto_e

    .line 287
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object v4, v12

    :cond_a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_d

    :catch_6
    move-exception v0

    :goto_8
    move/from16 v29, v6

    goto :goto_b

    :catch_7
    move-exception v0

    move/from16 v29, v6

    goto :goto_a

    :catch_8
    move-exception v0

    goto :goto_9

    :catch_9
    move-exception v0

    move-object/from16 v21, v4

    :goto_9
    move/from16 v29, v6

    move-object/from16 v20, v8

    :goto_a
    move-object/from16 v22, v9

    :goto_b
    move-object/from16 v26, v14

    :goto_c
    move-object/from16 v27, v15

    .line 292
    :goto_d
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_e
    move-object/from16 v8, v20

    move-object/from16 v4, v21

    move-object/from16 v9, v22

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    move/from16 v6, v29

    goto/16 :goto_3

    :cond_c
    move-object/from16 v21, v4

    move/from16 v29, v6

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    .line 295
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 299
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v0, "values"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->modelSync:Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->setQuery(Ljava/lang/String;)V

    .line 304
    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->arrQueries:Ljava/util/List;

    iget-object v4, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->modelSync:Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v29, 0x1

    move-object/from16 v7, v17

    move-object/from16 v9, v18

    move-object/from16 v8, v19

    move-object/from16 v4, v21

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    goto/16 :goto_2

    .line 309
    :cond_d
    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->arrQueries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    if-lez v0, :cond_14

    .line 311
    :try_start_c
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 312
    new-instance v3, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    .line 313
    iget-object v0, v3, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 314
    :goto_f
    :try_start_d
    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->arrQueries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_13

    .line 315
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->syncStatus:Z

    if-nez v0, :cond_e

    goto/16 :goto_13

    .line 318
    :cond_e
    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->arrQueries:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 319
    const-string v5, "\\\\\""

    const-string v7, "\'"

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->arrQueries:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->getRemarks()Ljava/lang/String;

    .line 323
    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->arrQueries:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->getRemarks()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    const-string v7, "SuccessIds"

    if-eqz v0, :cond_10

    :try_start_e
    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->arrQueries:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->getRemarks()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 324
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 325
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 326
    iget-object v8, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->arrQueries:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->getSourceID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {v2, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    .line 329
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    iget-object v8, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->arrQueries:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->getSourceID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-virtual {v2, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 334
    :cond_10
    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->arrQueries:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 335
    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->arrQueries:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 336
    iget-object v8, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->arrQueries:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->getSourceID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v8, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->arrQueries:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->getTableName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 339
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    iget-object v8, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->arrQueries:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->getSourceID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v8, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->arrQueries:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->getTableName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 347
    :goto_10
    :try_start_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->execute_RawQuery_inDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_11

    :catch_a
    move-exception v0

    const/4 v5, 0x0

    .line 349
    :try_start_10
    iput-boolean v5, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->syncStatus:Z

    .line 350
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 355
    :goto_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 359
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_12

    .line 361
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "["

    invoke-virtual {v0, v5, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 362
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 364
    const-string v8, "FailureIds"

    invoke-virtual {v5, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 369
    :try_start_11
    iget-object v5, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->tableModel:Lcom/conceptglobal/pmc/promotions/models/TableModel;

    invoke-virtual {v5, v12}, Lcom/conceptglobal/pmc/promotions/models/TableModel;->setFailureIds(Ljava/lang/String;)V

    .line 370
    iget-object v5, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->tableModel:Lcom/conceptglobal/pmc/promotions/models/TableModel;

    invoke-virtual {v5, v0}, Lcom/conceptglobal/pmc/promotions/models/TableModel;->setSuccessIds(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    add-int/lit8 v9, v9, 0x1

    move-object v6, v7

    goto/16 :goto_f

    :catch_b
    move-exception v0

    move-object v6, v7

    goto :goto_14

    .line 372
    :cond_13
    :goto_13
    :try_start_12
    iget-object v0, v3, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->dbHandler:Lcom/conceptglobal/pmc/database/DataBaseHandler;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_16

    :catch_c
    move-exception v0

    :goto_14
    const/4 v2, 0x0

    goto :goto_15

    :catch_d
    move-exception v0

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 374
    :goto_15
    :try_start_13
    iput-boolean v2, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->syncStatus:Z

    .line 375
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    :goto_16
    iget-boolean v0, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->syncStatus:Z

    if-eqz v0, :cond_15

    .line 379
    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyContentSyncTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getInstance()Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1, v6}, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->sendMasterSyncDataAcknowledgement(Lorg/json/JSONObject;)V

    goto :goto_17

    :cond_14
    const/4 v2, 0x1

    .line 383
    iput-boolean v2, v1, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->syncStatus:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_e

    goto :goto_17

    :catch_e
    move-exception v0

    .line 395
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    :goto_17
    return-void
.end method

.method public sendMasterSyncDataAcknowledgement(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 447
    const-string v0, "Sending acknowledgement"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 449
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->tableModel:Lcom/conceptglobal/pmc/promotions/models/TableModel;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->tableClass:Lcom/conceptglobal/pmc/promotions/sync/TableClass;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/sync/TableClass;->setTable(Ljava/util/List;)V

    .line 451
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    .line 452
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->tableClass:Lcom/conceptglobal/pmc/promotions/sync/TableClass;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 454
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 457
    :try_start_0
    const-string v1, "json"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string p1, "pdaid"

    new-instance v1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/sync/MasterSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 460
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 464
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 468
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 472
    :goto_1
    const-string v0, "60A4422E-22B1-4D32-9DFC-AA01C6C11DAC"

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCCMService(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/UpdateStatusAfterMasterSync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions;->getInstance()Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 478
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void
.end method
