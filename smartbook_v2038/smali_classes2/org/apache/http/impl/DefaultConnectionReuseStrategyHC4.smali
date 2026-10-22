.class public Lorg/apache/http/impl/DefaultConnectionReuseStrategyHC4;
.super Ljava/lang/Object;
.source "DefaultConnectionReuseStrategyHC4.java"

# interfaces
.implements Lorg/apache/http/ConnectionReuseStrategy;


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/DefaultConnectionReuseStrategyHC4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategyHC4;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategyHC4;-><init>()V

    sput-object v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategyHC4;->INSTANCE:Lorg/apache/http/impl/DefaultConnectionReuseStrategyHC4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canResponseHaveBody(Lorg/apache/http/HttpResponse;)Z
    .locals 1

    .line 182
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    const/16 v0, 0x130

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected createTokenIterator(Lorg/apache/http/HeaderIterator;)Lorg/apache/http/TokenIterator;
    .locals 1

    .line 178
    new-instance v0, Lorg/apache/http/message/BasicTokenIterator;

    invoke-direct {v0, p1}, Lorg/apache/http/message/BasicTokenIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    return-object v0
.end method

.method public keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 5

    .line 75
    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    const-string v0, "HTTP context"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object p2

    .line 81
    const-string v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 83
    const-string v3, "chunked"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/http/impl/DefaultConnectionReuseStrategyHC4;->canResponseHaveBody(Lorg/apache/http/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 90
    array-length v3, v0

    if-ne v3, v1, :cond_1

    .line 91
    aget-object v0, v0, v2

    .line 93
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v0, :cond_2

    :catch_0
    :cond_1
    return v2

    .line 109
    :cond_2
    const-string v0, "Connection"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 111
    const-string v0, "Proxy-Connection"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v0

    .line 137
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 139
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategyHC4;->createTokenIterator(Lorg/apache/http/HeaderIterator;)Lorg/apache/http/TokenIterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 141
    :cond_4
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/TokenIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 142
    invoke-interface {p1}, Lorg/apache/http/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 143
    const-string v4, "Close"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v2

    .line 145
    :cond_5
    const-string v4, "Keep-Alive"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    return v1

    :catch_1
    return v2

    .line 164
    :cond_7
    sget-object p1, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {p2, p1}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method
