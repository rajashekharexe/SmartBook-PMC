.class public Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions;
.super Ljava/lang/Object;
.source "WebServiceForPromotions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions$ExSSLSocketFactory;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "** WebServiceForPromotionss **"

.field private static instance:Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions;


# instance fields
.field public httpClient:Lorg/apache/http/client/HttpClient;

.field httpPost:Lorg/apache/http/client/methods/HttpPost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 60
    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 142
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 154
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 151
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 159
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 154
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 158
    :goto_3
    throw v0
.end method

.method public static getInstance()Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions;
    .locals 1

    .line 63
    sget-object v0, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions;->instance:Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions;->instance:Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions;

    .line 66
    :cond_0
    sget-object v0, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions;->instance:Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions;

    return-object v0
.end method


# virtual methods
.method public sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions$ExSSLSocketFactory;->getHttpsClient(Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 75
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance p2, Lorg/apache/http/entity/StringEntity;

    const-string v2, "UTF-8"

    invoke-direct {p2, p1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string p1, "http.keepAlive"

    const-string v2, "false"

    invoke-static {p1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    invoke-virtual {v1, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 79
    const-string p1, "Accept"

    const-string p2, "application/json; charset=utf-8"

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string p1, "Content-type"

    const-string p2, "application/json"

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    const-wide/32 v2, 0x9c40

    .line 83
    invoke-static {p1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    const p2, 0x9c40

    .line 84
    invoke-static {p1, p2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 85
    invoke-static {p1, p2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 86
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 87
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    .line 88
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    .line 89
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p2

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 91
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 93
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 95
    :cond_0
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 97
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    const/4 p1, 0x0

    .line 101
    :goto_0
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-object p1
.end method

.method public sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions$ExSSLSocketFactory;->getHttpsClient(Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 110
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 111
    new-instance p2, Lorg/apache/http/entity/StringEntity;

    const-string v2, "UTF-8"

    invoke-direct {p2, p1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string p1, "http.keepAlive"

    const-string v2, "false"

    invoke-static {p1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    invoke-virtual {v1, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 114
    const-string p1, "Accept"

    const-string p2, "application/json; charset=utf-8"

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string p1, "Token"

    invoke-virtual {v1, p1, p3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string p1, "Content-type"

    const-string p2, "application/json"

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    const-wide/32 p2, 0x9c40

    .line 119
    invoke-static {p1, p2, p3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    const p2, 0x9c40

    .line 120
    invoke-static {p1, p2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 121
    invoke-static {p1, p2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 122
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 123
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    .line 124
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    .line 125
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p2

    const/16 p3, 0xc8

    if-ne p1, p3, :cond_0

    .line 127
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 128
    invoke-direct {p0, p2}, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 132
    :cond_0
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 134
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    const/4 p1, 0x0

    .line 138
    :goto_0
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-object p1
.end method
