.class Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;
.super Lorg/apache/http/impl/conn/DefaultManagedHttpClientConnection;
.source "LoggingManagedHttpClientConnection.java"


# static fields
.field private static final HEADER_TAG:Ljava/lang/String; = "Headers"

.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private final wire:Lorg/apache/http/impl/conn/WireHC4;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/nio/charset/CharsetEncoder;",
            "Lorg/apache/http/config/MessageConstraints;",
            "Lorg/apache/http/entity/ContentLengthStrategy;",
            "Lorg/apache/http/entity/ContentLengthStrategy;",
            "Lorg/apache/http/io/HttpMessageWriterFactory<",
            "Lorg/apache/http/HttpRequest;",
            ">;",
            "Lorg/apache/http/io/HttpMessageParserFactory<",
            "Lorg/apache/http/HttpResponse;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct/range {p0 .. p10}, Lorg/apache/http/impl/conn/DefaultManagedHttpClientConnection;-><init>(Ljava/lang/String;IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V

    .line 68
    new-instance p2, Lorg/apache/http/impl/conn/WireHC4;

    invoke-direct {p2, p1}, Lorg/apache/http/impl/conn/WireHC4;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->wire:Lorg/apache/http/impl/conn/WireHC4;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 73
    const-string v1, "HttpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Close connection"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    invoke-super {p0}, Lorg/apache/http/impl/conn/DefaultManagedHttpClientConnection;->close()V

    return-void
.end method

.method protected getSocketInputStream(Ljava/net/Socket;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-super {p0, p1}, Lorg/apache/http/impl/conn/DefaultManagedHttpClientConnection;->getSocketInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->wire:Lorg/apache/http/impl/conn/WireHC4;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/WireHC4;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lorg/apache/http/impl/conn/LoggingInputStream;

    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->wire:Lorg/apache/http/impl/conn/WireHC4;

    invoke-direct {v0, p1, v1}, Lorg/apache/http/impl/conn/LoggingInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/impl/conn/WireHC4;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method protected getSocketOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-super {p0, p1}, Lorg/apache/http/impl/conn/DefaultManagedHttpClientConnection;->getSocketOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->wire:Lorg/apache/http/impl/conn/WireHC4;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/WireHC4;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lorg/apache/http/impl/conn/LoggingOutputStream;

    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->wire:Lorg/apache/http/impl/conn/WireHC4;

    invoke-direct {v0, p1, v1}, Lorg/apache/http/impl/conn/LoggingOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/http/impl/conn/WireHC4;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method protected onRequestSubmitted(Lorg/apache/http/HttpRequest;)V
    .locals 7

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 118
    const-string v1, "Headers"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " >> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p1

    .line 121
    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p1, v3

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onResponseReceived(Lorg/apache/http/HttpResponse;)V
    .locals 7

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 107
    const-string v1, "Headers"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " << "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p1

    .line 110
    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p1, v3

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 81
    const-string v1, "HttpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Shutdown connection"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    invoke-super {p0}, Lorg/apache/http/impl/conn/DefaultManagedHttpClientConnection;->shutdown()V

    return-void
.end method
