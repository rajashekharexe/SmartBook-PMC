.class public Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandlerHC4;
.super Ljava/lang/Object;
.source "RFC2965CommentUrlAttributeHandlerHC4.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieAttributeHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .line 52
    instance-of v0, p1, Lorg/apache/http/cookie/SetCookie2;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Lorg/apache/http/cookie/SetCookie2;

    .line 54
    invoke-interface {p1, p2}, Lorg/apache/http/cookie/SetCookie2;->setCommentURL(Ljava/lang/String;)V

    :cond_0
    return-void
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
