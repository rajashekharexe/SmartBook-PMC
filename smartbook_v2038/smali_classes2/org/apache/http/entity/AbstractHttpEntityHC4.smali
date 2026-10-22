.class public abstract Lorg/apache/http/entity/AbstractHttpEntityHC4;
.super Ljava/lang/Object;
.source "AbstractHttpEntityHC4.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field protected static final OUTPUT_BUFFER_SIZE:I = 0x1000


# instance fields
.field protected chunked:Z

.field protected contentEncoding:Lorg/apache/http/Header;

.field protected contentType:Lorg/apache/http/Header;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/http/entity/AbstractHttpEntityHC4;->contentEncoding:Lorg/apache/http/Header;

    return-object v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/http/entity/AbstractHttpEntityHC4;->contentType:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lorg/apache/http/entity/AbstractHttpEntityHC4;->chunked:Z

    return v0
.end method

.method public setChunked(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lorg/apache/http/entity/AbstractHttpEntityHC4;->chunked:Z

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 156
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Encoding"

    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 158
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/http/entity/AbstractHttpEntityHC4;->setContentEncoding(Lorg/apache/http/Header;)V

    return-void
.end method

.method public setContentEncoding(Lorg/apache/http/Header;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lorg/apache/http/entity/AbstractHttpEntityHC4;->contentEncoding:Lorg/apache/http/Header;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 127
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/http/entity/AbstractHttpEntityHC4;->setContentType(Lorg/apache/http/Header;)V

    return-void
.end method

.method public setContentType(Lorg/apache/http/Header;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lorg/apache/http/entity/AbstractHttpEntityHC4;->contentType:Lorg/apache/http/Header;

    return-void
.end method
