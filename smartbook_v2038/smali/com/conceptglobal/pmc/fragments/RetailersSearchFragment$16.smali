.class Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$16;
.super Ljava/lang/Object;
.source "RetailersSearchFragment.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V
    .locals 0

    .line 1253
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$16;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 1257
    const-string v0, "Data"

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 1258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x5

    if-le p2, v1, :cond_1

    const/4 p2, 0x0

    .line 1260
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1261
    const-string p1, "DataCount"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 1262
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1263
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 1264
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Ljava/io/StringReader;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/conceptglobal/pmc/model/RetailerMobileDetails;

    invoke-virtual {p1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/RetailerMobileDetails;

    .line 1265
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$16;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3000(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/model/RetailerMobileDetails;)V

    goto :goto_0

    .line 1269
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$16;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    const-string v0, "No Retailer data found."

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3100(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1272
    const-string v0, " Get User details"

    invoke-static {v0, p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_1
    :goto_0
    return-void
.end method
