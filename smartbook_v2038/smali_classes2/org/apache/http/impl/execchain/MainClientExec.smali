.class public Lorg/apache/http/impl/execchain/MainClientExec;
.super Ljava/lang/Object;
.source "MainClientExec.java"

# interfaces
.implements Lorg/apache/http/impl/execchain/ClientExecChain;


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private final authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

.field private final connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

.field private final keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

.field private final proxyHttpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field private final requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

.field private final reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field private final routeDirector:Lorg/apache/http/conn/routing/HttpRouteDirector;

.field private final targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

.field private final userTokenHandler:Lorg/apache/http/client/UserTokenHandler;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/UserTokenHandler;)V
    .locals 4

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-string v0, "HTTP request executor"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    const-string v0, "Client connection manager"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    const-string v0, "Connection reuse strategy"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    const-string v0, "Connection keep alive strategy"

    invoke-static {p4, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    const-string v0, "Target authentication strategy"

    invoke-static {p5, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    const-string v0, "Proxy authentication strategy"

    invoke-static {p6, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string v0, "User token handler"

    invoke-static {p7, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    new-instance v0, Lorg/apache/http/impl/auth/HttpAuthenticator;

    invoke-direct {v0}, Lorg/apache/http/impl/auth/HttpAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    .line 120
    new-instance v0, Lorg/apache/http/protocol/ImmutableHttpProcessor;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/http/HttpRequestInterceptor;

    new-instance v2, Lorg/apache/http/protocol/RequestTargetHostHC4;

    invoke-direct {v2}, Lorg/apache/http/protocol/RequestTargetHostHC4;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/client/protocol/RequestClientConnControl;

    invoke-direct {v2}, Lorg/apache/http/client/protocol/RequestClientConnControl;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lorg/apache/http/HttpRequestInterceptor;)V

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyHttpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 122
    new-instance v0, Lorg/apache/http/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lorg/apache/http/conn/routing/BasicRouteDirector;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->routeDirector:Lorg/apache/http/conn/routing/HttpRouteDirector;

    .line 123
    iput-object p1, p0, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 124
    iput-object p2, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    .line 125
    iput-object p3, p0, Lorg/apache/http/impl/execchain/MainClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 126
    iput-object p4, p0, Lorg/apache/http/impl/execchain/MainClientExec;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 127
    iput-object p5, p0, Lorg/apache/http/impl/execchain/MainClientExec;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    .line 128
    iput-object p6, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    .line 129
    iput-object p7, p0, Lorg/apache/http/impl/execchain/MainClientExec;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    return-void
.end method

.method private createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/client/protocol/HttpClientContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 540
    new-instance p1, Lorg/apache/http/HttpException;

    const-string p2, "Proxy chains are not supported."

    invoke-direct {p1, p2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createTunnelToTarget(Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v8, p5

    .line 445
    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v9

    .line 446
    invoke-virtual {v9}, Lorg/apache/http/client/config/RequestConfig;->getConnectTimeout()I

    move-result v10

    .line 448
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 449
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v11

    .line 452
    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v2

    .line 453
    new-instance v12, Lorg/apache/http/message/BasicHttpRequest;

    const-string v3, "CONNECT"

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v4

    invoke-direct {v12, v3, v2, v4}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    .line 455
    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v3, v0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyHttpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v2, v12, v3, v8}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    const/4 v13, 0x0

    :goto_0
    move-object v2, v13

    :goto_1
    const/4 v3, 0x0

    if-nez v2, :cond_7

    .line 458
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 459
    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    move-object/from16 v14, p3

    if-lez v10, :cond_0

    move v3, v10

    :cond_0
    invoke-interface {v2, v1, v14, v3, v8}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    goto :goto_2

    :cond_1
    move-object/from16 v14, p3

    .line 466
    :goto_2
    const-string v2, "Proxy-Authorization"

    invoke-interface {v12, v2}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 467
    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    move-object/from16 v15, p1

    invoke-virtual {v2, v12, v15, v8}, Lorg/apache/http/impl/auth/HttpAuthenticator;->generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)V

    .line 469
    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-virtual {v2, v12, v1, v8}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 471
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_6

    .line 477
    invoke-virtual {v9}, Lorg/apache/http/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 478
    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v5, v0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v3, v11

    move-object v4, v7

    move-object/from16 v6, p1

    move-object/from16 p4, v7

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/apache/http/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 480
    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v5, v0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v3, v11

    move-object/from16 v4, p4

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/apache/http/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 483
    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    move-object/from16 v3, p4

    invoke-interface {v2, v3, v8}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    .line 484
    const-string v4, "HttpClient"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 485
    const-string v2, "Connection kept alive"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_2
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 489
    invoke-static {v2}, Lorg/apache/http/util/EntityUtilsHC4;->consume(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 491
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpClientConnection;->close()V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v3, p4

    goto :goto_3

    :cond_5
    move-object v3, v7

    :goto_3
    move-object v2, v3

    goto/16 :goto_1

    :cond_6
    move-object v3, v7

    .line 473
    new-instance v1, Lorg/apache/http/HttpException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected response to CONNECT request: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 499
    :cond_7
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0x12b

    if-le v4, v5, :cond_9

    .line 504
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 506
    new-instance v4, Lorg/apache/http/entity/BufferedHttpEntityHC4;

    invoke-direct {v4, v3}, Lorg/apache/http/entity/BufferedHttpEntityHC4;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v2, v4}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 509
    :cond_8
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 510
    new-instance v1, Lorg/apache/http/impl/execchain/TunnelRefusedException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CONNECT refused by proxy: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/apache/http/impl/execchain/TunnelRefusedException;-><init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    throw v1

    :cond_9
    return v3
.end method

.method private needAuthentication(Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/protocol/HttpClientContext;)Z
    .locals 10

    .line 549
    invoke-virtual {p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Lorg/apache/http/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 551
    invoke-virtual {p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    if-nez v0, :cond_0

    .line 553
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 555
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    if-gez v1, :cond_1

    .line 556
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v1

    .line 561
    :cond_1
    iget-object v4, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v7, p0, Lorg/apache/http/impl/execchain/MainClientExec;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v5, v0

    move-object v6, p4

    move-object v8, p1

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lorg/apache/http/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    .line 564
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    if-nez v2, :cond_2

    .line 567
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 569
    :cond_2
    iget-object v3, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v6, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v4, v2

    move-object v5, p4

    move-object v7, p2

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/apache/http/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result p3

    if-eqz v1, :cond_3

    .line 573
    iget-object v4, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v7, p0, Lorg/apache/http/impl/execchain/MainClientExec;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v5, v0

    move-object v6, p4

    move-object v8, p1

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lorg/apache/http/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz p3, :cond_4

    .line 577
    iget-object v3, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v6, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v4, v2

    move-object v5, p4

    move-object v7, p2

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/apache/http/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method establishRoute(Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    invoke-virtual {p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lorg/apache/http/client/config/RequestConfig;->getConnectTimeout()I

    move-result v0

    .line 364
    new-instance v1, Lorg/apache/http/conn/routing/RouteTracker;

    invoke-direct {v1, p3}, Lorg/apache/http/conn/routing/RouteTracker;-><init>(Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 367
    :cond_0
    invoke-virtual {v1}, Lorg/apache/http/conn/routing/RouteTracker;->toRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    .line 368
    iget-object v3, p0, Lorg/apache/http/impl/execchain/MainClientExec;->routeDirector:Lorg/apache/http/conn/routing/HttpRouteDirector;

    invoke-interface {v3, p3, v2}, Lorg/apache/http/conn/routing/HttpRouteDirector;->nextStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 370
    const-string v6, "HttpClient"

    packed-switch v3, :pswitch_data_0

    .line 423
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown step indicator "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " from RouteDirector."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 412
    :pswitch_0
    iget-object v2, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v2, p2, p3, p5}, Lorg/apache/http/conn/HttpClientConnectionManager;->upgrade(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V

    .line 413
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->isSecure()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/routing/RouteTracker;->layerProtocol(Z)V

    goto :goto_1

    .line 403
    :pswitch_1
    invoke-virtual {v2}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 404
    invoke-direct {p0, p3, v2, p5}, Lorg/apache/http/impl/execchain/MainClientExec;->createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/client/protocol/HttpClientContext;)Z

    move-result v5

    .line 405
    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 406
    const-string v4, "Tunnel to proxy created."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_1
    invoke-virtual {p3, v2}, Lorg/apache/http/conn/routing/HttpRoute;->getHopTarget(I)Lorg/apache/http/HttpHost;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/apache/http/conn/routing/RouteTracker;->tunnelProxy(Lorg/apache/http/HttpHost;Z)V

    goto :goto_1

    .line 390
    :pswitch_2
    invoke-direct/range {p0 .. p5}, Lorg/apache/http/impl/execchain/MainClientExec;->createTunnelToTarget(Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)Z

    move-result v2

    .line 392
    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 393
    const-string v4, "Tunnel to target created."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_2
    invoke-virtual {v1, v2}, Lorg/apache/http/conn/routing/RouteTracker;->tunnelTarget(Z)V

    goto :goto_1

    .line 381
    :pswitch_3
    iget-object v2, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-lez v0, :cond_3

    move v4, v0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2, p2, p3, v4, p5}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    .line 386
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 387
    invoke-virtual {v1, v2, v5}, Lorg/apache/http/conn/routing/RouteTracker;->connectProxy(Lorg/apache/http/HttpHost;Z)V

    goto :goto_1

    .line 373
    :pswitch_4
    iget-object v2, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-lez v0, :cond_4

    move v5, v0

    :cond_4
    invoke-interface {v2, p2, p3, v5, p5}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    .line 378
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->isSecure()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/routing/RouteTracker;->connectTarget(Z)V

    goto :goto_1

    .line 420
    :pswitch_5
    iget-object v2, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v2, p2, p3, p5}, Lorg/apache/http/conn/HttpClientConnectionManager;->routeComplete(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V

    :goto_1
    if-gtz v3, :cond_0

    return-void

    .line 417
    :pswitch_6
    new-instance p1, Lorg/apache/http/HttpException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Unable to establish route: planned = "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "; current = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 137
    const-string v12, "Proxy-Authorization"

    const-string v13, "Authorization"

    const-string v1, "HTTP route"

    invoke-static {v8, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    const-string v1, "HTTP request"

    invoke-static {v9, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    const-string v1, "HTTP context"

    invoke-static {v10, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetAuthState()Lorg/apache/http/auth/AuthStateHC4;

    move-result-object v1

    if-nez v1, :cond_0

    .line 143
    new-instance v1, Lorg/apache/http/auth/AuthStateHC4;

    invoke-direct {v1}, Lorg/apache/http/auth/AuthStateHC4;-><init>()V

    .line 144
    const-string v2, "http.auth.target-scope"

    invoke-virtual {v10, v2, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v14, v1

    .line 146
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getProxyAuthState()Lorg/apache/http/auth/AuthStateHC4;

    move-result-object v1

    if-nez v1, :cond_1

    .line 148
    new-instance v1, Lorg/apache/http/auth/AuthStateHC4;

    invoke-direct {v1}, Lorg/apache/http/auth/AuthStateHC4;-><init>()V

    .line 149
    const-string v2, "http.auth.proxy-scope"

    invoke-virtual {v10, v2, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    move-object v15, v1

    .line 152
    instance-of v1, v9, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_2

    .line 153
    move-object v1, v9

    check-cast v1, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-static {v1}, Lorg/apache/http/impl/execchain/RequestEntityProxy;->enhance(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 156
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getUserToken()Ljava/lang/Object;

    move-result-object v6

    .line 158
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v1, v8, v6}, Lorg/apache/http/conn/HttpClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ConnectionRequest;

    move-result-object v1

    .line 159
    const-string v5, "Request aborted"

    if-eqz v11, :cond_4

    .line 160
    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v2

    if-nez v2, :cond_3

    .line 164
    invoke-interface {v11, v1}, Lorg/apache/http/client/methods/HttpExecutionAware;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    goto :goto_0

    .line 161
    :cond_3
    invoke-interface {v1}, Lorg/apache/http/conn/ConnectionRequest;->cancel()Z

    .line 162
    new-instance v1, Lorg/apache/http/impl/execchain/RequestAbortedException;

    invoke-direct {v1, v5}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_4
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v16

    .line 172
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/client/config/RequestConfig;->getConnectionRequestTimeout()I

    move-result v2

    const-wide/16 v17, 0x0

    if-lez v2, :cond_5

    int-to-long v2, v2

    goto :goto_1

    :cond_5
    move-wide/from16 v2, v17

    .line 173
    :goto_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/http/conn/ConnectionRequest;->get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/HttpClientConnection;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_17

    .line 185
    const-string v1, "http.connection"

    invoke-virtual {v10, v1, v4}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/client/config/RequestConfig;->isStaleConnectionCheckEnabled()Z

    move-result v1

    const/4 v3, 0x3

    const-string v2, "HttpClient"

    if-eqz v1, :cond_8

    .line 189
    invoke-interface {v4}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 190
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 191
    const-string v1, "Stale connection check"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_6
    invoke-interface {v4}, Lorg/apache/http/HttpClientConnection;->isStale()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 194
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 195
    const-string v1, "Stale connection detected"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_7
    invoke-interface {v4}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 202
    :cond_8
    new-instance v1, Lorg/apache/http/impl/execchain/ConnectionHolder;

    iget-object v3, v7, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-direct {v1, v3, v4}, Lorg/apache/http/impl/execchain/ConnectionHolder;-><init>(Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/HttpClientConnection;)V

    if-eqz v11, :cond_9

    .line 205
    :try_start_1
    invoke-interface {v11, v1}, Lorg/apache/http/client/methods/HttpExecutionAware;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v12, v1

    :goto_2
    move-object v1, v0

    goto/16 :goto_1a

    :catch_1
    move-exception v0

    move-object v12, v1

    :goto_3
    move-object v1, v0

    goto/16 :goto_1b

    :catch_2
    move-exception v0

    move-object v12, v1

    :goto_4
    move-object v1, v0

    goto/16 :goto_1c

    :catch_3
    move-exception v0

    move-object v1, v0

    goto/16 :goto_1d

    :cond_9
    :goto_5
    const/4 v3, 0x1

    move-object/from16 v20, v12

    const/4 v12, 0x1

    :goto_6
    if-le v12, v3, :cond_b

    .line 211
    invoke-static/range {p2 .. p2}, Lorg/apache/http/impl/execchain/RequestEntityProxy;->isRepeatable(Lorg/apache/http/HttpRequest;)Z

    move-result v21

    if-eqz v21, :cond_a

    goto :goto_7

    .line 212
    :cond_a
    new-instance v2, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string v3, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {v2, v3}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    :goto_7
    if-eqz v11, :cond_d

    .line 216
    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v21

    if-nez v21, :cond_c

    goto :goto_8

    .line 217
    :cond_c
    new-instance v2, Lorg/apache/http/impl/execchain/RequestAbortedException;

    invoke-direct {v2, v5}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_d
    :goto_8
    invoke-interface {v4}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v21
    :try_end_1
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v21, :cond_10

    const/4 v3, 0x3

    .line 221
    :try_start_2
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19
    :try_end_2
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_b

    if-eqz v19, :cond_e

    .line 222
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_7

    move-object/from16 v22, v1

    :try_start_4
    const-string v1, "Opening connection "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v3, v22

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_b

    :catch_7
    move-exception v0

    move-object/from16 v22, v1

    :goto_9
    move-object v1, v0

    move-object/from16 v12, v22

    goto/16 :goto_1a

    :catch_8
    move-exception v0

    move-object/from16 v22, v1

    :goto_a
    move-object v1, v0

    move-object/from16 v12, v22

    goto/16 :goto_1b

    :catch_9
    move-exception v0

    move-object/from16 v22, v1

    :goto_b
    move-object v1, v0

    move-object/from16 v12, v22

    goto/16 :goto_1c

    :cond_e
    move-object v3, v1

    :goto_c
    move-object/from16 v1, p0

    move-object v8, v2

    move-object v2, v15

    move-object/from16 v21, v3

    move/from16 v22, v12

    const/4 v12, 0x3

    const/16 v19, 0x1

    move-object v3, v4

    move-object/from16 v23, v4

    move-object/from16 v4, p1

    move-object/from16 v24, v5

    move-object/from16 v5, p2

    move-object/from16 v25, v6

    move-object/from16 v6, p3

    .line 225
    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lorg/apache/http/impl/execchain/MainClientExec;->establishRoute(Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)V
    :try_end_5
    .catch Lorg/apache/http/impl/execchain/TunnelRefusedException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_e

    goto :goto_10

    :catch_a
    move-exception v0

    move-object v1, v0

    .line 227
    :try_start_6
    invoke-static {v8, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 228
    invoke-virtual {v1}, Lorg/apache/http/impl/execchain/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_f
    invoke-virtual {v1}, Lorg/apache/http/impl/execchain/TunnelRefusedException;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v1
    :try_end_6
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_e

    move-object/from16 v12, v21

    goto/16 :goto_17

    :catch_b
    move-exception v0

    move-object/from16 v21, v1

    :goto_d
    move-object v1, v0

    move-object/from16 v12, v21

    goto/16 :goto_1a

    :catch_c
    move-exception v0

    move-object/from16 v21, v1

    :goto_e
    move-object v1, v0

    move-object/from16 v12, v21

    goto/16 :goto_1b

    :catch_d
    move-exception v0

    move-object/from16 v21, v1

    :goto_f
    move-object v1, v0

    move-object/from16 v12, v21

    goto/16 :goto_1c

    :cond_10
    move-object/from16 v21, v1

    move-object v8, v2

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v22, v12

    const/4 v12, 0x3

    const/16 v19, 0x1

    .line 234
    :goto_10
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/client/config/RequestConfig;->getSocketTimeout()I

    move-result v1
    :try_end_7
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_14

    if-ltz v1, :cond_11

    move-object/from16 v6, v23

    .line 236
    :try_start_8
    invoke-interface {v6, v1}, Lorg/apache/http/HttpClientConnection;->setSocketTimeout(I)V

    goto :goto_11

    :catch_e
    move-exception v0

    goto :goto_d

    :catch_f
    move-exception v0

    goto :goto_e

    :catch_10
    move-exception v0

    goto :goto_f

    :cond_11
    move-object/from16 v6, v23

    :goto_11
    if-eqz v11, :cond_13

    .line 239
    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_12

    .line 240
    :cond_12
    new-instance v1, Lorg/apache/http/impl/execchain/RequestAbortedException;

    move-object/from16 v5, v24

    invoke-direct {v1, v5}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    :cond_13
    :goto_12
    move-object/from16 v5, v24

    .line 243
    :try_start_9
    invoke-static {v8, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1
    :try_end_9
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_9 .. :try_end_9} :catch_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_14

    if-eqz v1, :cond_14

    .line 244
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_e

    .line 247
    :cond_14
    :try_start_b
    invoke-virtual {v9, v13}, Lorg/apache/http/client/methods/HttpRequestWrapper;->containsHeader(Ljava/lang/String;)Z

    move-result v1
    :try_end_b
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_b .. :try_end_b} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_14

    if-nez v1, :cond_16

    .line 248
    :try_start_c
    invoke-static {v8, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target auth state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_15
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    invoke-virtual {v1, v9, v14, v10}, Lorg/apache/http/impl/auth/HttpAuthenticator;->generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_c
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_e

    :cond_16
    move-object/from16 v4, v20

    .line 253
    :try_start_d
    invoke-virtual {v9, v4}, Lorg/apache/http/client/methods/HttpRequestWrapper;->containsHeader(Ljava/lang/String;)Z

    move-result v1
    :try_end_d
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_d .. :try_end_d} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_d .. :try_end_d} :catch_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_14

    if-nez v1, :cond_18

    :try_start_e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_18

    .line 254
    invoke-static {v8, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy auth state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_17
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    invoke-virtual {v1, v9, v15, v10}, Lorg/apache/http/impl/auth/HttpAuthenticator;->generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_e
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_e .. :try_end_e} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_e

    .line 260
    :cond_18
    :try_start_f
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-virtual {v1, v9, v6, v10}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 263
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {v1, v3, v10}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 265
    iget-object v1, v7, Lorg/apache/http/impl/execchain/MainClientExec;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    invoke-interface {v1, v3, v10}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v1

    .line 266
    invoke-static {v8, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20
    :try_end_f
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_f .. :try_end_f} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_f .. :try_end_f} :catch_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_14

    if-eqz v20, :cond_1a

    cmp-long v20, v1, v17

    if-lez v20, :cond_19

    .line 269
    :try_start_10
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v3

    const-string v3, "for "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    :cond_19
    move-object/from16 v23, v3

    .line 271
    const-string v3, "indefinitely"

    .line 273
    :goto_13
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v4

    const-string v4, "Connection can be kept alive "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_e

    goto :goto_14

    :cond_1a
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    .line 275
    :goto_14
    :try_start_11
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_11
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_11 .. :try_end_11} :catch_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_14

    move-object/from16 v12, v21

    :try_start_12
    invoke-virtual {v12, v1, v2, v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;->setValidFor(JLjava/util/concurrent/TimeUnit;)V

    .line 276
    invoke-virtual {v12}, Lorg/apache/http/impl/execchain/ConnectionHolder;->markReusable()V

    goto :goto_15

    :cond_1b
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v12, v21

    .line 278
    invoke-virtual {v12}, Lorg/apache/http/impl/execchain/ConnectionHolder;->markNonReusable()V

    :goto_15
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v21, v23

    move-object v3, v15

    move-object/from16 v11, v24

    move-object/from16 v4, p1

    move-object/from16 v26, v5

    move-object/from16 v5, v21

    move-object/from16 v23, v6

    move-object/from16 v6, p3

    .line 281
    invoke-direct/range {v1 .. v6}, Lorg/apache/http/impl/execchain/MainClientExec;->needAuthentication(Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/protocol/HttpClientContext;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 284
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 285
    invoke-virtual {v12}, Lorg/apache/http/impl/execchain/ConnectionHolder;->isReusable()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 286
    invoke-static {v1}, Lorg/apache/http/util/EntityUtilsHC4;->consume(Lorg/apache/http/HttpEntity;)V

    :cond_1c
    const/4 v1, 0x3

    goto :goto_16

    .line 288
    :cond_1d
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 289
    invoke-virtual {v15}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v1

    sget-object v2, Lorg/apache/http/auth/AuthProtocolState;->SUCCESS:Lorg/apache/http/auth/AuthProtocolState;

    if-ne v1, v2, :cond_1f

    invoke-virtual {v15}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v15}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x3

    .line 292
    invoke-static {v8, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 293
    const-string v1, "Resetting proxy auth state"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1e
    invoke-virtual {v15}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    .line 297
    :cond_1f
    invoke-virtual {v14}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v1

    sget-object v2, Lorg/apache/http/auth/AuthProtocolState;->SUCCESS:Lorg/apache/http/auth/AuthProtocolState;

    if-ne v1, v2, :cond_1c

    invoke-virtual {v14}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v14}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x3

    .line 300
    invoke-static {v8, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 301
    const-string v2, "Resetting target auth state"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_20
    invoke-virtual {v14}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    .line 307
    :goto_16
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v2

    .line 308
    invoke-interface {v2, v13}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 309
    invoke-virtual {v9, v13}, Lorg/apache/http/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 311
    :cond_21
    invoke-interface {v2, v11}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 312
    invoke-virtual {v9, v11}, Lorg/apache/http/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    :cond_22
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v20, v11

    move-object v1, v12

    move-object/from16 v4, v23

    move-object/from16 v6, v25

    move-object/from16 v5, v26

    const/4 v3, 0x1

    move-object/from16 v11, p4

    move v12, v2

    move-object v2, v8

    move-object/from16 v8, p1

    goto/16 :goto_6

    :cond_23
    move-object/from16 v1, v21

    :goto_17
    if-nez v25, :cond_24

    .line 320
    iget-object v2, v7, Lorg/apache/http/impl/execchain/MainClientExec;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    invoke-interface {v2, v10}, Lorg/apache/http/client/UserTokenHandler;->getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v6

    .line 321
    const-string v2, "http.user-token"

    invoke-virtual {v10, v2, v6}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_18

    :catch_11
    move-exception v0

    goto/16 :goto_2

    :catch_12
    move-exception v0

    goto/16 :goto_3

    :catch_13
    move-exception v0

    goto/16 :goto_4

    :cond_24
    move-object/from16 v6, v25

    :goto_18
    if-eqz v6, :cond_25

    .line 324
    invoke-virtual {v12, v6}, Lorg/apache/http/impl/execchain/ConnectionHolder;->setState(Ljava/lang/Object;)V

    .line 328
    :cond_25
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 329
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_19

    .line 334
    :cond_26
    new-instance v2, Lorg/apache/http/impl/execchain/HttpResponseProxy;

    invoke-direct {v2, v1, v12}, Lorg/apache/http/impl/execchain/HttpResponseProxy;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V

    return-object v2

    .line 331
    :cond_27
    :goto_19
    invoke-virtual {v12}, Lorg/apache/http/impl/execchain/ConnectionHolder;->releaseConnection()V

    .line 332
    new-instance v2, Lorg/apache/http/impl/execchain/HttpResponseProxy;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/apache/http/impl/execchain/HttpResponseProxy;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    :try_end_12
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_12 .. :try_end_12} :catch_13
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_11

    return-object v2

    :catch_14
    move-exception v0

    move-object/from16 v12, v21

    goto/16 :goto_2

    :catch_15
    move-exception v0

    move-object/from16 v12, v21

    goto/16 :goto_3

    :catch_16
    move-exception v0

    move-object/from16 v12, v21

    goto/16 :goto_4

    .line 348
    :goto_1a
    invoke-virtual {v12}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 349
    throw v1

    .line 345
    :goto_1b
    invoke-virtual {v12}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 346
    throw v1

    .line 342
    :goto_1c
    invoke-virtual {v12}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 343
    throw v1

    .line 337
    :goto_1d
    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v3, "Connection has been shut down"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 340
    throw v2

    :catch_17
    move-exception v0

    move-object v1, v0

    .line 178
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_28

    goto :goto_1e

    :cond_28
    move-object v1, v2

    .line 182
    :goto_1e
    new-instance v2, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string v3, "Request execution failed"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_18
    move-exception v0

    move-object/from16 v26, v5

    move-object v1, v0

    .line 175
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 176
    new-instance v2, Lorg/apache/http/impl/execchain/RequestAbortedException;

    move-object/from16 v3, v26

    invoke-direct {v2, v3, v1}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
