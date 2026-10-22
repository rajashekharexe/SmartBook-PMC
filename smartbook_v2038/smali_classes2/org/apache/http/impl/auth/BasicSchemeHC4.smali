.class public Lorg/apache/http/impl/auth/BasicSchemeHC4;
.super Lorg/apache/http/impl/auth/RFC2617SchemeHC4;
.source "BasicSchemeHC4.java"


# instance fields
.field private complete:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    sget-object v0, Lorg/apache/http/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/BasicSchemeHC4;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;-><init>(Ljava/nio/charset/Charset;)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lorg/apache/http/impl/auth/BasicSchemeHC4;->complete:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/auth/ChallengeState;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;-><init>(Lorg/apache/http/auth/ChallengeState;)V

    return-void
.end method

.method public static authenticate(Lorg/apache/http/auth/Credentials;Ljava/lang/String;Z)Lorg/apache/http/Header;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    const-string v0, "Credentials"

    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    const-string v0, "charset"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    invoke-interface {p0}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-interface {p0}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    .line 206
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    if-eqz p2, :cond_1

    .line 208
    const-string p2, "Proxy-Authorization"

    invoke-virtual {p1, p2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 210
    :cond_1
    const-string p2, "Authorization"

    invoke-virtual {p1, p2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 212
    :goto_1
    const-string p2, ": Basic "

    invoke-virtual {p1, p2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 213
    array-length v0, p0

    invoke-virtual {p1, p0, p2, v0}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    .line 215
    new-instance p0, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {p0, p1}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object p0
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContextHC4;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContextHC4;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/impl/auth/BasicSchemeHC4;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object p1

    return-object p1
.end method

.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .line 155
    const-string p3, "Credentials"

    invoke-static {p1, p3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    const-string p3, "HTTP request"

    invoke-static {p2, p3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    invoke-interface {p1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-interface {p1}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/apache/http/impl/auth/BasicSchemeHC4;->getCredentialsCharset(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    .line 166
    new-instance p2, Lorg/apache/http/util/CharArrayBuffer;

    const/16 p3, 0x20

    invoke-direct {p2, p3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 167
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/BasicSchemeHC4;->isProxy()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 168
    const-string p3, "Proxy-Authorization"

    invoke-virtual {p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 170
    :cond_1
    const-string p3, "Authorization"

    invoke-virtual {p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 172
    :goto_1
    const-string p3, ": Basic "

    invoke-virtual {p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 173
    array-length v0, p1

    invoke-virtual {p2, p1, p3, v0}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    .line 175
    new-instance p1, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {p1, p2}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object p1
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "basic"

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/BasicSchemeHC4;->complete:Z

    return v0
.end method

.method public isConnectionBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .line 104
    invoke-super {p0, p1}, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;->processChallenge(Lorg/apache/http/Header;)V

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lorg/apache/http/impl/auth/BasicSchemeHC4;->complete:Z

    return-void
.end method
