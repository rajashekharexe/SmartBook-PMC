.class public Lorg/apache/http/impl/auth/HttpAuthenticator;
.super Ljava/lang/Object;
.source "HttpAuthenticator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doAuth(Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .line 245
    instance-of v0, p1, Lorg/apache/http/auth/ContextAwareAuthScheme;

    if-eqz v0, :cond_0

    .line 246
    check-cast p1, Lorg/apache/http/auth/ContextAwareAuthScheme;

    invoke-interface {p1, p2, p3, p4}, Lorg/apache/http/auth/ContextAwareAuthScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object p1

    return-object p1

    .line 248
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/http/auth/AuthScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    move-result-object p1

    return-object p1
.end method

.method private ensureAuthScheme(Lorg/apache/http/auth/AuthScheme;)V
    .locals 1

    .line 236
    const-string v0, "Auth scheme"

    invoke-static {p1, v0}, Lorg/apache/http/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-virtual {p2}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 186
    invoke-virtual {p2}, Lorg/apache/http/auth/AuthStateHC4;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v1

    .line 187
    sget-object v2, Lorg/apache/http/impl/auth/HttpAuthenticator$1;->$SwitchMap$org$apache$http$auth$AuthProtocolState:[I

    invoke-virtual {p2}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/http/auth/AuthProtocolState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const-string v4, " authentication error: "

    const/4 v5, 0x3

    const-string v6, "HttpClient"

    if-eq v2, v3, :cond_2

    if-eq v2, v5, :cond_1

    const/4 p2, 0x4

    if-eq v2, p2, :cond_0

    goto/16 :goto_2

    :cond_0
    return-void

    .line 191
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/HttpAuthenticator;->ensureAuthScheme(Lorg/apache/http/auth/AuthScheme;)V

    .line 192
    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    .line 197
    :cond_2
    invoke-virtual {p2}, Lorg/apache/http/auth/AuthStateHC4;->getAuthOptions()Ljava/util/Queue;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 199
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 200
    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/auth/AuthOption;

    .line 201
    invoke-virtual {v0}, Lorg/apache/http/auth/AuthOption;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v1

    .line 202
    invoke-virtual {v0}, Lorg/apache/http/auth/AuthOption;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v0

    .line 203
    invoke-virtual {p2, v1, v0}, Lorg/apache/http/auth/AuthStateHC4;->update(Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/Credentials;)V

    .line 204
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Generating response to an authentication challenge using "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " scheme"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_4
    :try_start_0
    invoke-direct {p0, v1, v0, p1, p3}, Lorg/apache/http/impl/auth/HttpAuthenticator;->doAuth(Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object v0

    .line 210
    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_0
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v3, 0x5

    .line 213
    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    :goto_1
    return-void

    .line 220
    :cond_6
    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/HttpAuthenticator;->ensureAuthScheme(Lorg/apache/http/auth/AuthScheme;)V

    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    .line 225
    :try_start_1
    invoke-direct {p0, v0, v1, p1, p3}, Lorg/apache/http/impl/auth/HttpAuthenticator;->doAuth(Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object p2

    .line 226
    invoke-interface {p1, p2}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_1
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    const/4 p2, 0x6

    .line 228
    invoke-static {v6, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 229
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return-void
.end method

.method public handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 10

    .line 105
    const-string v0, "HttpClient"

    .line 0
    const-string v1, "Selected authentication options: "

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 105
    :try_start_0
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " requested authentication"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    invoke-interface {p3, p1, p2, p5}, Lorg/apache/http/client/AuthenticationStrategy;->getChallenges(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v5

    .line 109
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 110
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 111
    const-string p1, "Response contains no authentication challenges"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3

    .line 116
    :cond_2
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v6

    .line 117
    sget-object v7, Lorg/apache/http/impl/auth/HttpAuthenticator$1;->$SwitchMap$org$apache$http$auth$AuthProtocolState:[I

    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/http/auth/AuthProtocolState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/4 v9, 0x2

    if-eq v7, v9, :cond_5

    if-eq v7, v4, :cond_4

    const/4 v9, 0x4

    if-eq v7, v9, :cond_3

    if-eq v7, v2, :cond_7

    goto :goto_0

    :cond_3
    return v3

    .line 121
    :cond_4
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    goto :goto_0

    :cond_5
    if-nez v6, :cond_7

    .line 126
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 127
    const-string p2, "Auth scheme is null"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 p2, 0x0

    .line 129
    invoke-interface {p3, p1, p2, p5}, Lorg/apache/http/client/AuthenticationStrategy;->authFailed(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/protocol/HttpContext;)V

    .line 130
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    .line 131
    sget-object p1, Lorg/apache/http/auth/AuthProtocolState;->FAILURE:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {p4, p1}, Lorg/apache/http/auth/AuthStateHC4;->setState(Lorg/apache/http/auth/AuthProtocolState;)V

    return v3

    :cond_7
    if-eqz v6, :cond_c

    .line 136
    invoke-interface {v6}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v7

    .line 137
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/http/Header;

    if-eqz v7, :cond_b

    .line 139
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 140
    const-string p2, "Authorization challenge processed"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_8
    invoke-interface {v6, v7}, Lorg/apache/http/auth/AuthScheme;->processChallenge(Lorg/apache/http/Header;)V

    .line 143
    invoke-interface {v6}, Lorg/apache/http/auth/AuthScheme;->isComplete()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 144
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 145
    const-string p2, "Authentication failed"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_9
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object p2

    invoke-interface {p3, p1, p2, p5}, Lorg/apache/http/client/AuthenticationStrategy;->authFailed(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/protocol/HttpContext;)V

    .line 148
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    .line 149
    sget-object p1, Lorg/apache/http/auth/AuthProtocolState;->FAILURE:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {p4, p1}, Lorg/apache/http/auth/AuthStateHC4;->setState(Lorg/apache/http/auth/AuthProtocolState;)V

    return v3

    .line 152
    :cond_a
    sget-object p1, Lorg/apache/http/auth/AuthProtocolState;->HANDSHAKE:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {p4, p1}, Lorg/apache/http/auth/AuthStateHC4;->setState(Lorg/apache/http/auth/AuthProtocolState;)V

    return v8

    .line 156
    :cond_b
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    .line 161
    :cond_c
    :goto_0
    invoke-interface {p3, v5, p1, p2, p5}, Lorg/apache/http/client/AuthenticationStrategy;->select(Ljava/util/Map;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Queue;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 162
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_e

    .line 163
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_d
    sget-object p2, Lorg/apache/http/auth/AuthProtocolState;->CHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {p4, p2}, Lorg/apache/http/auth/AuthStateHC4;->setState(Lorg/apache/http/auth/AuthProtocolState;)V

    .line 167
    invoke-virtual {p4, p1}, Lorg/apache/http/auth/AuthStateHC4;->update(Ljava/util/Queue;)V
    :try_end_0
    .catch Lorg/apache/http/auth/MalformedChallengeException; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :cond_e
    return v3

    :catch_0
    move-exception p1

    .line 173
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 174
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Malformed challenge: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/auth/MalformedChallengeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_f
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    return v3
.end method

.method public isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 4

    .line 71
    invoke-interface {p3, p1, p2, p5}, Lorg/apache/http/client/AuthenticationStrategy;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x3

    const-string v2, "HttpClient"

    if-eqz p2, :cond_2

    .line 72
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 73
    const-string p2, "Authentication required"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object p2

    sget-object v1, Lorg/apache/http/auth/AuthProtocolState;->SUCCESS:Lorg/apache/http/auth/AuthProtocolState;

    if-ne p2, v1, :cond_1

    .line 76
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object p2

    invoke-interface {p3, p1, p2, p5}, Lorg/apache/http/client/AuthenticationStrategy;->authFailed(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/protocol/HttpContext;)V

    :cond_1
    return v0

    .line 80
    :cond_2
    sget-object p2, Lorg/apache/http/impl/auth/HttpAuthenticator$1;->$SwitchMap$org$apache$http$auth$AuthProtocolState:[I

    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/http/auth/AuthProtocolState;->ordinal()I

    move-result v3

    aget p2, p2, v3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    if-eq p2, v1, :cond_5

    .line 92
    sget-object p1, Lorg/apache/http/auth/AuthProtocolState;->UNCHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {p4, p1}, Lorg/apache/http/auth/AuthStateHC4;->setState(Lorg/apache/http/auth/AuthProtocolState;)V

    goto :goto_0

    .line 83
    :cond_3
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 84
    const-string p2, "Authentication succeeded"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_4
    sget-object p2, Lorg/apache/http/auth/AuthProtocolState;->SUCCESS:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {p4, p2}, Lorg/apache/http/auth/AuthStateHC4;->setState(Lorg/apache/http/auth/AuthProtocolState;)V

    .line 87
    invoke-virtual {p4}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object p2

    invoke-interface {p3, p1, p2, p5}, Lorg/apache/http/client/AuthenticationStrategy;->authSucceeded(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/protocol/HttpContext;)V

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
