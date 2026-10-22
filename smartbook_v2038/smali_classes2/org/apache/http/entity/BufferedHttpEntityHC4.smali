.class public Lorg/apache/http/entity/BufferedHttpEntityHC4;
.super Lorg/apache/http/entity/HttpEntityWrapperHC4;
.source "BufferedHttpEntityHC4.java"


# instance fields
.field private final buffer:[B


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapperHC4;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 62
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lorg/apache/http/entity/BufferedHttpEntityHC4;->buffer:[B

    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/apache/http/util/EntityUtilsHC4;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/entity/BufferedHttpEntityHC4;->buffer:[B

    :goto_1
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntityHC4;->buffer:[B

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/http/entity/BufferedHttpEntityHC4;->buffer:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 83
    :cond_0
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapperHC4;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntityHC4;->buffer:[B

    if-eqz v0, :cond_0

    .line 72
    array-length v0, v0

    int-to-long v0, v0

    return-wide v0

    .line 74
    :cond_0
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapperHC4;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public isChunked()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntityHC4;->buffer:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapperHC4;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntityHC4;->buffer:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapperHC4;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntityHC4;->buffer:[B

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapperHC4;->writeTo(Ljava/io/OutputStream;)V

    :goto_0
    return-void
.end method
