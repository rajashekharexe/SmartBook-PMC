.class public Lorg/apache/http/impl/conn/DefaultHttpResponseParser;
.super Lorg/apache/http/impl/io/AbstractMessageParserHC4;
.source "DefaultHttpResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/http/impl/io/AbstractMessageParserHC4<",
        "Lorg/apache/http/HttpResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private final lineBuf:Lorg/apache/http/util/CharArrayBuffer;

.field private final responseFactory:Lorg/apache/http/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;)V
    .locals 2

    const/4 v0, 0x0

    .line 128
    sget-object v1, Lorg/apache/http/config/MessageConstraints;->DEFAULT:Lorg/apache/http/config/MessageConstraints;

    invoke-direct {p0, p1, v0, v0, v1}, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/config/MessageConstraints;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/config/MessageConstraints;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, v0, v0, p2}, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/config/MessageConstraints;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/config/MessageConstraints;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/http/impl/io/AbstractMessageParserHC4;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/config/MessageConstraints;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    sget-object p3, Lorg/apache/http/impl/DefaultHttpResponseFactoryHC4;->INSTANCE:Lorg/apache/http/impl/DefaultHttpResponseFactoryHC4;

    :goto_0
    iput-object p3, p0, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    .line 103
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/http/impl/io/AbstractMessageParserHC4;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/params/HttpParams;)V

    .line 77
    const-string p1, "Response factory"

    invoke-static {p3, p1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iput-object p3, p0, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    .line 79
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    return-void
.end method


# virtual methods
.method protected bridge synthetic parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;->parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method protected parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 139
    :goto_0
    iget-object v2, p0, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 140
    iget-object v2, p0, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1, v2}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 143
    :cond_0
    new-instance p1, Lorg/apache/http/NoHttpResponseException;

    const-string v0, "The target server failed to respond"

    invoke-direct {p1, v0}, Lorg/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_1
    :goto_1
    new-instance v4, Lorg/apache/http/message/ParserCursor;

    iget-object v5, p0, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    invoke-direct {v4, v0, v5}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 146
    iget-object v5, p0, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;->lineParser:Lorg/apache/http/message/LineParser;

    iget-object v6, p0, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v5, v6, v4}, Lorg/apache/http/message/LineParser;->hasProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 160
    iget-object p1, p0, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;->lineParser:Lorg/apache/http/message/LineParser;

    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1, v0, v4}, Lorg/apache/http/message/LineParser;->parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;

    move-result-object p1

    .line 161
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/StatusLine;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    return-object p1

    :cond_2
    if-eq v2, v3, :cond_4

    .line 149
    iget-object v2, p0, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0, v2, v1}, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;->reject(Lorg/apache/http/util/CharArrayBuffer;I)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x3

    .line 154
    const-string v3, "HttpClient"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Garbage in response: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_4
    new-instance p1, Lorg/apache/http/ProtocolException;

    const-string v0, "The server failed to respond with a valid HTTP response"

    invoke-direct {p1, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected reject(Lorg/apache/http/util/CharArrayBuffer;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
