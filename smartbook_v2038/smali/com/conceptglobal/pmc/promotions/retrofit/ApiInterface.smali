.class public interface abstract Lcom/conceptglobal/pmc/promotions/retrofit/ApiInterface;
.super Ljava/lang/Object;
.source "ApiInterface.java"


# virtual methods
.method public abstract getPromotionsData(Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/models/SendPromotionModel;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "token"
        .end annotation
    .end param
    .param p2    # Lcom/conceptglobal/pmc/promotions/models/SendPromotionModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/conceptglobal/pmc/promotions/models/SendPromotionModel;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "GetMasterSyncData"
    .end annotation
.end method

.method public abstract sendMasterSyncDataAck(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-AUTH-TOKEN"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "UpdateStatusAfterMasterSync"
    .end annotation
.end method
