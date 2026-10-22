.class Lorg/apache/http/impl/conn/HttpClientConnectionOperator;
.super Ljava/lang/Object;
.source "HttpClientConnectionOperator.java"


# static fields
.field static final SOCKET_FACTORY_REGISTRY:Ljava/lang/String; = "http.socket-factory-registry"

.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private final dnsResolver:Lorg/apache/http/conn/DnsResolver;

.field private final schemePortResolver:Lorg/apache/http/conn/SchemePortResolver;

.field private final socketFactoryRegistry:Lorg/apache/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/http/config/Lookup;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/SchemePortResolver;",
            "Lorg/apache/http/conn/DnsResolver;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "Socket factory registry"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->socketFactoryRegistry:Lorg/apache/http/config/Lookup;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    sget-object p2, Lorg/apache/http/impl/conn/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/http/impl/conn/DefaultSchemePortResolver;

    :goto_0
    iput-object p2, p0, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->schemePortResolver:Lorg/apache/http/conn/SchemePortResolver;

    if-eqz p3, :cond_1

    goto :goto_1

    .line 75
    :cond_1
    sget-object p3, Lorg/apache/http/impl/conn/SystemDefaultDnsResolver;->INSTANCE:Lorg/apache/http/impl/conn/SystemDefaultDnsResolver;

    :goto_1
    iput-object p3, p0, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->dnsResolver:Lorg/apache/http/conn/DnsResolver;

    return-void
.end method

.method private static varargs getConnectTimeoutMessage(Ljava/io/IOException;Lorg/apache/http/HttpHost;[Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connect to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "remote host"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    array-length p1, p2

    if-lez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " failed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const-string p0, " timed out"

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSocketFactoryRegistry(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/config/Lookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/protocol/HttpContext;",
            ")",
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;"
        }
    .end annotation

    .line 81
    const-string v0, "http.socket-factory-registry"

    invoke-interface {p1, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/config/Lookup;

    if-nez p1, :cond_0

    .line 84
    iget-object p1, p0, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->socketFactoryRegistry:Lorg/apache/http/config/Lookup;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public connect(Lorg/apache/http/conn/ManagedHttpClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetSocketAddress;ILorg/apache/http/config/SocketConfig;Lorg/apache/http/protocol/HttpContext;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p6

    .line 96
    invoke-direct {v1, v11}, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->getSocketFactoryRegistry(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/config/Lookup;

    move-result-object v0

    .line 97
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/http/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lorg/apache/http/conn/socket/ConnectionSocketFactory;

    if-eqz v12, :cond_9

    .line 102
    iget-object v0, v1, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->dnsResolver:Lorg/apache/http/conn/DnsResolver;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/http/conn/DnsResolver;->resolve(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v13

    .line 103
    iget-object v0, v1, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->schemePortResolver:Lorg/apache/http/conn/SchemePortResolver;

    invoke-interface {v0, v10}, Lorg/apache/http/conn/SchemePortResolver;->resolve(Lorg/apache/http/HttpHost;)I

    move-result v14

    const/4 v9, 0x0

    .line 104
    :goto_0
    array-length v0, v13

    if-ge v9, v0, :cond_8

    .line 105
    aget-object v0, v13, v9

    .line 106
    array-length v3, v13

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v9, v3, :cond_0

    const/16 v16, 0x1

    goto :goto_1

    :cond_0
    const/16 v16, 0x0

    .line 108
    :goto_1
    invoke-interface {v12, v11}, Lorg/apache/http/conn/socket/ConnectionSocketFactory;->createSocket(Lorg/apache/http/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v5

    .line 109
    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/config/SocketConfig;->getSoTimeout()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 110
    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/config/SocketConfig;->isSoReuseAddress()Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 111
    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/config/SocketConfig;->isTcpNoDelay()Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 112
    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/config/SocketConfig;->isSoKeepAlive()Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 113
    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/config/SocketConfig;->getSoLinger()I

    move-result v3

    if-ltz v3, :cond_2

    if-lez v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 115
    :goto_2
    invoke-virtual {v5, v4, v3}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 117
    :cond_2
    invoke-interface {v2, v5}, Lorg/apache/http/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    .line 119
    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-direct {v8, v0, v14}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 120
    const-string v7, "HttpClient"

    const/4 v6, 0x3

    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Connecting to "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v3, v12

    move/from16 v4, p4

    const/4 v15, 0x3

    move-object/from16 v6, p2

    move-object v1, v7

    move-object v7, v8

    move-object/from16 v17, v8

    move-object/from16 v8, p3

    move/from16 v18, v9

    move-object/from16 v9, p6

    .line 124
    :try_start_0
    invoke-interface/range {v3 .. v9}, Lorg/apache/http/conn/socket/ConnectionSocketFactory;->connectSocket(ILjava/net/Socket;Lorg/apache/http/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/http/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v0

    .line 126
    invoke-interface {v2, v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    .line 127
    invoke-static {v1, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection established "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    if-eqz v16, :cond_6

    .line 139
    invoke-virtual {v0}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 140
    const-string v2, "Connection timed out"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 141
    new-instance v1, Lorg/apache/http/conn/ConnectTimeoutException;

    invoke-static {v0, v10, v13}, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->getConnectTimeoutMessage(Ljava/io/IOException;Lorg/apache/http/HttpHost;[Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1, v0}, Lorg/apache/http/conn/ConnectTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 144
    throw v1

    .line 146
    :cond_5
    new-instance v1, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {v1, v10, v0}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v1

    :catch_1
    move-exception v0

    if-eqz v16, :cond_6

    .line 133
    new-instance v3, Lorg/apache/http/conn/ConnectTimeoutException;

    invoke-static {v0, v10, v13}, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->getConnectTimeoutMessage(Ljava/io/IOException;Lorg/apache/http/HttpHost;[Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v3, v0}, Lorg/apache/http/conn/ConnectTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 150
    :cond_6
    invoke-static {v1, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Connect to "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " timed out. Connection will be retried using another IP address"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    add-int/lit8 v9, v18, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_8
    return-void

    .line 99
    :cond_9
    new-instance v0, Lorg/apache/http/conn/UnsupportedSchemeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " protocol is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/conn/UnsupportedSchemeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public upgrade(Lorg/apache/http/conn/ManagedHttpClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-static {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object v0

    .line 174
    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->getSocketFactoryRegistry(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/config/Lookup;

    move-result-object v0

    .line 175
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/http/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/socket/ConnectionSocketFactory;

    if-eqz v0, :cond_1

    .line 180
    instance-of v1, v0, Lorg/apache/http/conn/socket/LayeredConnectionSocketFactory;

    if-eqz v1, :cond_0

    .line 184
    check-cast v0, Lorg/apache/http/conn/socket/LayeredConnectionSocketFactory;

    .line 185
    invoke-interface {p1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->schemePortResolver:Lorg/apache/http/conn/SchemePortResolver;

    invoke-interface {v2, p2}, Lorg/apache/http/conn/SchemePortResolver;->resolve(Lorg/apache/http/HttpHost;)I

    move-result v2

    .line 187
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2, v2, p3}, Lorg/apache/http/conn/socket/LayeredConnectionSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILorg/apache/http/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object p2

    .line 188
    invoke-interface {p1, p2}, Lorg/apache/http/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    return-void

    .line 181
    :cond_0
    new-instance p1, Lorg/apache/http/conn/UnsupportedSchemeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " protocol does not support connection upgrade"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/conn/UnsupportedSchemeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_1
    new-instance p1, Lorg/apache/http/conn/UnsupportedSchemeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " protocol is not supported"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/conn/UnsupportedSchemeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
