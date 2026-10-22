.class public Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4;
.super Ljava/lang/Object;
.source "BrowserCompatSpecFactoryHC4.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;
    }
.end annotation


# instance fields
.field private final datepatterns:[Ljava/lang/String;

.field private final securityLevel:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 69
    sget-object v1, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4;-><init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    .line 65
    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4;-><init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4;->datepatterns:[Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4;->securityLevel:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .locals 1

    .line 89
    new-instance p1, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    iget-object v0, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4;->datepatterns:[Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;-><init>([Ljava/lang/String;)V

    return-object p1
.end method

.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 76
    const-string v1, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_0

    .line 79
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 80
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 82
    :cond_0
    new-instance p1, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    iget-object v1, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4;->securityLevel:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;

    invoke-direct {p1, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;-><init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;)V

    return-object p1

    .line 84
    :cond_1
    new-instance p1, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    iget-object v1, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4;->securityLevel:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;

    invoke-direct {p1, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;-><init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;)V

    return-object p1
.end method
