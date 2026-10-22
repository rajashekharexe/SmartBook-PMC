.class public Lorg/apache/http/impl/auth/NTLMSchemeHC4;
.super Lorg/apache/http/impl/auth/AuthSchemeBaseHC4;
.source "NTLMSchemeHC4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;
    }
.end annotation


# instance fields
.field private challenge:Ljava/lang/String;

.field private final engine:Lorg/apache/http/impl/auth/NTLMEngine;

.field private state:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineImpl;

    invoke-direct {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/NTLMSchemeHC4;-><init>(Lorg/apache/http/impl/auth/NTLMEngine;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/auth/NTLMEngine;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lorg/apache/http/impl/auth/AuthSchemeBaseHC4;-><init>()V

    .line 67
    const-string v0, "NTLM engine"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->engine:Lorg/apache/http/impl/auth/NTLMEngine;

    .line 69
    sget-object p1, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->UNINITIATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->state:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->challenge:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .line 124
    :try_start_0
    check-cast p1, Lorg/apache/http/auth/NTCredentials;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    iget-object p2, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->state:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    sget-object v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->FAILED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    if-eq p2, v0, :cond_3

    .line 133
    iget-object p2, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->state:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    sget-object v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    if-ne p2, v0, :cond_0

    .line 134
    iget-object p2, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->engine:Lorg/apache/http/impl/auth/NTLMEngine;

    invoke-virtual {p1}, Lorg/apache/http/auth/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lorg/apache/http/impl/auth/NTLMEngine;->generateType1Msg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    sget-object p2, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->MSG_TYPE1_GENERATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    iput-object p2, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->state:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    goto :goto_0

    .line 138
    :cond_0
    iget-object p2, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->state:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    sget-object v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->MSG_TYPE2_RECEVIED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    if-ne p2, v0, :cond_2

    .line 139
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->engine:Lorg/apache/http/impl/auth/NTLMEngine;

    invoke-virtual {p1}, Lorg/apache/http/auth/NTCredentials;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/auth/NTCredentials;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/http/auth/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/http/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->challenge:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lorg/apache/http/impl/auth/NTLMEngine;->generateType3Msg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    sget-object p2, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->MSG_TYPE3_GENERATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    iput-object p2, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->state:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    .line 149
    :goto_0
    new-instance p2, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v0, 0x20

    invoke-direct {p2, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 150
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->isProxy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const-string v0, "Proxy-Authorization"

    invoke-virtual {p2, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :cond_1
    const-string v0, "Authorization"

    invoke-virtual {p2, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 155
    :goto_1
    const-string v0, ": NTLM "

    invoke-virtual {p2, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2, p1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 157
    new-instance p1, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {p1, p2}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object p1

    .line 147
    :cond_2
    new-instance p1, Lorg/apache/http/auth/AuthenticationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->state:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_3
    new-instance p1, Lorg/apache/http/auth/AuthenticationException;

    const-string p2, "NTLM authentication failed"

    invoke-direct {p1, p2}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :catch_0
    new-instance p2, Lorg/apache/http/auth/InvalidCredentialsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Credentials cannot be used for NTLM authentication: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "ntlm"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .line 161
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->state:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    sget-object v1, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->MSG_TYPE3_GENERATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->state:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    sget-object v1, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->FAILED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isConnectionBased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .line 102
    invoke-virtual {p1, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->challenge:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 104
    iget-object p1, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->state:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    sget-object p2, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->UNINITIATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    if-ne p1, p2, :cond_0

    .line 105
    sget-object p1, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->state:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    goto :goto_0

    .line 107
    :cond_0
    sget-object p1, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->FAILED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->state:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    goto :goto_0

    .line 110
    :cond_1
    iget-object p1, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->state:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    sget-object p2, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->MSG_TYPE1_GENERATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    invoke-virtual {p1, p2}, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_3

    .line 113
    iget-object p1, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->state:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    sget-object p2, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->MSG_TYPE1_GENERATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    if-ne p1, p2, :cond_2

    .line 114
    sget-object p1, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->MSG_TYPE2_RECEVIED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->state:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    :cond_2
    :goto_0
    return-void

    .line 111
    :cond_3
    sget-object p1, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->FAILED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4;->state:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    .line 112
    new-instance p1, Lorg/apache/http/auth/MalformedChallengeException;

    const-string p2, "Out of sequence NTLM response message"

    invoke-direct {p1, p2}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
