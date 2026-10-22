.class public abstract Lorg/apache/http/impl/cookie/AbstractCookieAttributeHandlerHC4;
.super Ljava/lang/Object;
.source "AbstractCookieAttributeHandlerHC4.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieAttributeHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    return-void
.end method
