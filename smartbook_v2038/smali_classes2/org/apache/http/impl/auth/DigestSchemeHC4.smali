.class public Lorg/apache/http/impl/auth/DigestSchemeHC4;
.super Lorg/apache/http/impl/auth/RFC2617SchemeHC4;
.source "DigestSchemeHC4.java"


# static fields
.field private static final HEXADECIMAL:[C

.field private static final QOP_AUTH:I = 0x2

.field private static final QOP_AUTH_INT:I = 0x1

.field private static final QOP_MISSING:I = 0x0

.field private static final QOP_UNKNOWN:I = -0x1


# instance fields
.field private a1:Ljava/lang/String;

.field private a2:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field private complete:Z

.field private lastNonce:Ljava/lang/String;

.field private nounceCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 83
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/http/impl/auth/DigestSchemeHC4;->HEXADECIMAL:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 124
    sget-object v0, Lorg/apache/http/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/DigestSchemeHC4;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;-><init>(Ljava/nio/charset/Charset;)V

    const/4 p1, 0x0

    .line 107
    iput-boolean p1, p0, Lorg/apache/http/impl/auth/DigestSchemeHC4;->complete:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/auth/ChallengeState;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;-><init>(Lorg/apache/http/auth/ChallengeState;)V

    return-void
.end method

.method public static createCnonce()Ljava/lang/String;
    .locals 2

    .line 473
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x8

    .line 474
    new-array v1, v1, [B

    .line 475
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 476
    invoke-static {v1}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createDigestHeader(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 248
    const-string v2, "uri"

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    const-string v4, "realm"

    invoke-virtual {v1, v4}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 250
    const-string v6, "nonce"

    invoke-virtual {v1, v6}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 251
    const-string v8, "opaque"

    invoke-virtual {v1, v8}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 252
    const-string v10, "methodname"

    invoke-virtual {v1, v10}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 253
    const-string v11, "algorithm"

    invoke-virtual {v1, v11}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 255
    const-string v13, "MD5"

    if-nez v12, :cond_0

    move-object v12, v13

    .line 259
    :cond_0
    new-instance v14, Ljava/util/HashSet;

    const/16 v15, 0x8

    invoke-direct {v14, v15}, Ljava/util/HashSet;-><init>(I)V

    .line 261
    const-string v15, "qop"

    move-object/from16 v16, v13

    invoke-virtual {v1, v15}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v8

    .line 262
    const-string v8, "auth-int"

    move-object/from16 v20, v9

    const-string v9, "auth"

    move-object/from16 v21, v11

    if-eqz v13, :cond_4

    .line 263
    new-instance v11, Ljava/util/StringTokenizer;

    move-object/from16 v22, v15

    const-string v15, ","

    invoke-direct {v11, v13, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_0
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 265
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v23, v11

    .line 266
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v15, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v14, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v23

    goto :goto_0

    .line 268
    :cond_1
    instance-of v11, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v11, :cond_2

    invoke-interface {v14, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    .line 270
    :cond_2
    invoke-interface {v14, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x2

    goto :goto_1

    :cond_3
    const/4 v11, -0x1

    goto :goto_1

    :cond_4
    move-object/from16 v22, v15

    const/4 v11, 0x0

    :goto_1
    const/4 v15, -0x1

    if-eq v11, v15, :cond_1a

    .line 281
    const-string v13, "charset"

    invoke-virtual {v1, v13}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_5

    .line 283
    const-string v13, "ISO-8859-1"

    .line 287
    :cond_5
    const-string v15, "MD5-sess"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v18, v8

    goto :goto_2

    :cond_6
    move-object/from16 v18, v8

    move-object/from16 v16, v12

    .line 293
    :goto_2
    :try_start_0
    invoke-static/range {v16 .. v16}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8
    :try_end_0
    .catch Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 298
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v16

    move-object/from16 v23, v2

    invoke-interface/range {v16 .. v16}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v24, v6

    .line 299
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v25, v4

    .line 301
    iget-object v4, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->lastNonce:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v27, v9

    move-object/from16 v26, v10

    if-eqz v4, :cond_7

    .line 302
    iget-wide v9, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->nounceCount:J

    move-object/from16 v29, v3

    const-wide/16 v3, 0x1

    add-long/2addr v9, v3

    iput-wide v9, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->nounceCount:J

    goto :goto_3

    :cond_7
    move-object/from16 v29, v3

    const-wide/16 v3, 0x1

    .line 304
    iput-wide v3, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->nounceCount:J

    const/4 v3, 0x0

    .line 305
    iput-object v3, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->cnonce:Ljava/lang/String;

    .line 306
    iput-object v7, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->lastNonce:Ljava/lang/String;

    .line 308
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 309
    new-instance v4, Ljava/util/Formatter;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v3, v9}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 310
    iget-wide v9, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->nounceCount:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v28, v14

    const/4 v10, 0x1

    new-array v14, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v9, v14, v10

    const-string v9, "%08x"

    invoke-virtual {v4, v9, v14}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 311
    invoke-virtual {v4}, Ljava/util/Formatter;->close()V

    .line 312
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 314
    iget-object v9, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->cnonce:Ljava/lang/String;

    if-nez v9, :cond_8

    .line 315
    invoke-static {}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->createCnonce()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->cnonce:Ljava/lang/String;

    :cond_8
    const/4 v9, 0x0

    .line 318
    iput-object v9, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->a1:Ljava/lang/String;

    .line 319
    iput-object v9, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->a2:Ljava/lang/String;

    .line 321
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    const/16 v14, 0x3a

    if-eqz v10, :cond_9

    const/4 v10, 0x0

    .line 327
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 328
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v13}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->encode([B)Ljava/lang/String;

    move-result-object v6

    .line 330
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 331
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->cnonce:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->a1:Ljava/lang/String;

    goto :goto_4

    :cond_9
    const/4 v10, 0x0

    .line 335
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 336
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->a1:Ljava/lang/String;

    .line 340
    :goto_4
    iget-object v6, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->a1:Ljava/lang/String;

    invoke-static {v6, v13}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->encode([B)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x2

    if-ne v11, v10, :cond_a

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v9, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->a2:Ljava/lang/String;

    move-object/from16 v14, v27

    goto/16 :goto_7

    :cond_a
    move-object/from16 v15, v26

    move-object/from16 v9, v29

    const/4 v10, 0x1

    if-ne v11, v10, :cond_f

    .line 348
    instance-of v10, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v10, :cond_b

    .line 349
    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_d

    .line 351
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v10

    if-nez v10, :cond_d

    move-object/from16 v14, v27

    move-object/from16 v10, v28

    .line 353
    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->a2:Ljava/lang/String;

    const/16 v19, 0x2

    goto :goto_6

    .line 357
    :cond_c
    new-instance v0, Lorg/apache/http/auth/AuthenticationException;

    const-string v2, "Qop auth-int cannot be used with a non-repeatable entity"

    invoke-direct {v0, v2}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object/from16 v14, v27

    .line 361
    new-instance v10, Lorg/apache/http/impl/auth/HttpEntityDigester;

    invoke-direct {v10, v8}, Lorg/apache/http/impl/auth/HttpEntityDigester;-><init>(Ljava/security/MessageDigest;)V

    if-eqz v0, :cond_e

    .line 364
    :try_start_1
    invoke-interface {v0, v10}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 366
    :cond_e
    invoke-virtual {v10}, Lorg/apache/http/impl/auth/HttpEntityDigester;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x3a

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/apache/http/impl/auth/HttpEntityDigester;->getDigest()[B

    move-result-object v10

    invoke-static {v10}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->encode([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->a2:Ljava/lang/String;

    move/from16 v19, v11

    :goto_6
    move/from16 v11, v19

    goto :goto_7

    :catch_0
    move-exception v0

    .line 368
    new-instance v2, Lorg/apache/http/auth/AuthenticationException;

    const-string v3, "I/O error reading entity content"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_f
    move-object/from16 v14, v27

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->a2:Ljava/lang/String;

    .line 376
    :goto_7
    iget-object v0, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->a2:Ljava/lang/String;

    invoke-static {v0, v13}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->encode([B)Ljava/lang/String;

    move-result-object v0

    if-nez v11, :cond_10

    const/4 v10, 0x0

    .line 382
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 383
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x3a

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_10
    const/4 v10, 0x0

    const/16 v13, 0x3a

    .line 386
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 387
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->cnonce:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    if-ne v11, v6, :cond_11

    move-object/from16 v6, v18

    goto :goto_8

    :cond_11
    move-object v6, v14

    :goto_8
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_9
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 395
    new-instance v3, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v6, 0x80

    invoke-direct {v3, v6}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 396
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->isProxy()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 397
    const-string v6, "Proxy-Authorization"

    invoke-virtual {v3, v6}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_a

    .line 399
    :cond_12
    const-string v6, "Authorization"

    invoke-virtual {v3, v6}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 401
    :goto_a
    const-string v6, ": Digest "

    invoke-virtual {v3, v6}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 403
    new-instance v6, Ljava/util/ArrayList;

    const/16 v8, 0x14

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "username"

    invoke-direct {v8, v13, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v8, v25

    invoke-direct {v2, v8, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v5, v24

    invoke-direct {v2, v5, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v5, v23

    invoke-direct {v2, v5, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "response"

    invoke-direct {v2, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    const-string v0, "nc"

    if-eqz v11, :cond_14

    .line 411
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const/4 v5, 0x1

    if-ne v11, v5, :cond_13

    move-object/from16 v8, v18

    goto :goto_b

    :cond_13
    move-object v8, v14

    :goto_b
    move-object/from16 v5, v22

    invoke-direct {v2, v5, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v2, v0, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "cnonce"

    iget-object v7, v1, Lorg/apache/http/impl/auth/DigestSchemeHC4;->cnonce:Ljava/lang/String;

    invoke-direct {v2, v4, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_14
    move-object/from16 v5, v22

    .line 416
    :goto_c
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v4, v21

    invoke-direct {v2, v4, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v20, :cond_15

    .line 418
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v8, v17

    move-object/from16 v7, v20

    invoke-direct {v2, v8, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    const/4 v2, 0x0

    .line 421
    :goto_d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_19

    .line 422
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/http/message/BasicNameValuePair;

    if-lez v2, :cond_16

    .line 424
    const-string v8, ", "

    invoke-virtual {v3, v8}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 426
    :cond_16
    invoke-virtual {v7}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    .line 427
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    goto :goto_e

    :cond_17
    const/4 v8, 0x0

    goto :goto_f

    :cond_18
    :goto_e
    const/4 v8, 0x1

    .line 429
    :goto_f
    sget-object v9, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueFormatterHC4;

    const/4 v11, 0x1

    xor-int/2addr v8, v11

    invoke-virtual {v9, v3, v7, v8}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 431
    :cond_19
    new-instance v0, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v0, v3}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v0

    .line 295
    :catch_1
    new-instance v0, Lorg/apache/http/auth/AuthenticationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsuppported digest algorithm: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v12, v16

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_1a
    new-instance v0, Lorg/apache/http/auth/AuthenticationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "None of the qop methods is supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;
        }
    .end annotation

    .line 230
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 232
    :catch_0
    new-instance v0, Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported algorithm in HTTP Digest authentication: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static encode([B)Ljava/lang/String;
    .locals 7

    .line 454
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 455
    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 457
    aget-byte v3, p0, v2

    and-int/lit8 v4, v3, 0xf

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    mul-int/lit8 v5, v2, 0x2

    .line 459
    sget-object v6, Lorg/apache/http/impl/auth/DigestSchemeHC4;->HEXADECIMAL:[C

    aget-char v3, v6, v3

    aput-char v3, v1, v5

    add-int/lit8 v5, v5, 0x1

    .line 460
    aget-char v3, v6, v4

    aput-char v3, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 463
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

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

    .line 186
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContextHC4;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContextHC4;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object p1

    return-object p1
.end method

.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .line 209
    const-string p3, "Credentials"

    invoke-static {p1, p3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    const-string p3, "HTTP request"

    invoke-static {p2, p3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    const-string p3, "realm"

    invoke-virtual {p0, p3}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 214
    const-string p3, "nonce"

    invoke-virtual {p0, p3}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 218
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->getParameters()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "methodname"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->getParameters()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uri"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string p3, "charset"

    invoke-virtual {p0, p3}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->getCredentialsCharset(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->createDigestHeader(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    move-result-object p1

    return-object p1

    .line 215
    :cond_1
    new-instance p1, Lorg/apache/http/auth/AuthenticationException;

    const-string p2, "missing nonce in challenge"

    invoke-direct {p1, p2}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_2
    new-instance p1, Lorg/apache/http/auth/AuthenticationException;

    const-string p2, "missing realm in challenge"

    invoke-direct {p1, p2}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getA1()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestSchemeHC4;->a1:Ljava/lang/String;

    return-object v0
.end method

.method getA2()Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestSchemeHC4;->a2:Ljava/lang/String;

    return-object v0
.end method

.method getCnonce()Ljava/lang/String;
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestSchemeHC4;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .line 163
    const-string v0, "digest"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .line 149
    const-string v0, "stale"

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 153
    :cond_0
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/DigestSchemeHC4;->complete:Z

    return v0
.end method

.method public isConnectionBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public overrideParamter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 176
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestSchemeHC4;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .line 138
    invoke-super {p0, p1}, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;->processChallenge(Lorg/apache/http/Header;)V

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lorg/apache/http/impl/auth/DigestSchemeHC4;->complete:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DIGEST [complete="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    iget-boolean v1, p0, Lorg/apache/http/impl/auth/DigestSchemeHC4;->complete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/impl/auth/DigestSchemeHC4;->lastNonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/http/impl/auth/DigestSchemeHC4;->nounceCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
