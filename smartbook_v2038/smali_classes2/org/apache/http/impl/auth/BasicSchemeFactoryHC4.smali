.class public Lorg/apache/http/impl/auth/BasicSchemeFactoryHC4;
.super Ljava/lang/Object;
.source "BasicSchemeFactoryHC4.java"

# interfaces
.implements Lorg/apache/http/auth/AuthSchemeFactory;
.implements Lorg/apache/http/auth/AuthSchemeProvider;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/BasicSchemeFactoryHC4;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/http/impl/auth/BasicSchemeFactoryHC4;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/auth/AuthScheme;
    .locals 1

    .line 68
    new-instance p1, Lorg/apache/http/impl/auth/BasicSchemeHC4;

    iget-object v0, p0, Lorg/apache/http/impl/auth/BasicSchemeFactoryHC4;->charset:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0}, Lorg/apache/http/impl/auth/BasicSchemeHC4;-><init>(Ljava/nio/charset/Charset;)V

    return-object p1
.end method

.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    .locals 0

    .line 64
    new-instance p1, Lorg/apache/http/impl/auth/BasicSchemeHC4;

    invoke-direct {p1}, Lorg/apache/http/impl/auth/BasicSchemeHC4;-><init>()V

    return-object p1
.end method
