.class Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;
.super Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "NTLMEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Type1Message"
.end annotation


# instance fields
.field protected domainBytes:[B

.field protected hostBytes:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 998
    invoke-direct {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V

    .line 1001
    :try_start_0
    invoke-static {p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1003
    invoke-static {p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    const-string v0, "ASCII"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    iput-object p2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B

    if-eqz p1, :cond_1

    .line 1006
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1009
    new-instance p2, Lorg/apache/http/impl/auth/NTLMEngineException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unicode unsupported: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method getResponse()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x28

    .line 1025
    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->prepareResponse(II)V

    const v0, -0x5df77dff

    .line 1028
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V

    const/4 v0, 0x0

    .line 1053
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    .line 1054
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    .line 1057
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V

    .line 1060
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    .line 1061
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    .line 1064
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V

    const/16 v0, 0x105

    .line 1067
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    const/16 v0, 0xa28

    .line 1069
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V

    const/16 v0, 0xf00

    .line 1071
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    .line 1081
    invoke-super {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->getResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
