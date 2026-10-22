.class public Lorg/apache/http/impl/io/IdentityOutputStreamHC4;
.super Ljava/io/OutputStream;
.source "IdentityOutputStreamHC4.java"


# instance fields
.field private closed:Z

.field private final out:Lorg/apache/http/io/SessionOutputBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lorg/apache/http/impl/io/IdentityOutputStreamHC4;->closed:Z

    .line 62
    const-string v0, "Session output buffer"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/io/SessionOutputBuffer;

    iput-object p1, p0, Lorg/apache/http/impl/io/IdentityOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityOutputStreamHC4;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lorg/apache/http/impl/io/IdentityOutputStreamHC4;->closed:Z

    .line 74
    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityOutputStreamHC4;->closed:Z

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lorg/apache/http/io/SessionOutputBuffer;->write(I)V

    return-void

    .line 99
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempted write to closed stream."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 93
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/impl/io/IdentityOutputStreamHC4;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityOutputStreamHC4;->closed:Z

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted write to closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
