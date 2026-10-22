.class public Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions$ExSSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "WebServiceForPromotions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExSSLSocketFactory"
.end annotation


# instance fields
.field sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 398
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 395
    const-string p1, "TLS"

    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions$ExSSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 399
    new-instance p1, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions$ExSSLSocketFactory$1;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions$ExSSLSocketFactory$1;-><init>(Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions$ExSSLSocketFactory;)V

    .line 409
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions$ExSSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 413
    invoke-direct {p0, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 395
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 414
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions$ExSSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method public static getHttpsClient(Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;
    .locals 7

    const/4 v0, 0x0

    .line 429
    :try_start_0
    new-instance v1, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions$ExSSLSocketFactory$2;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions$ExSSLSocketFactory$2;-><init>()V

    .line 442
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const/4 v3, 0x1

    .line 443
    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 444
    new-instance v1, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions$ExSSLSocketFactory;

    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions$ExSSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;)V

    .line 445
    sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 446
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    .line 447
    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v3

    .line 448
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    const/16 v6, 0x1bb

    invoke-direct {v4, v5, v1, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 449
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions$ExSSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/retrofit/WebServiceForPromotions$ExSSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method
