.class public Lorg/apache/http/protocol/BasicHttpContextHC4;
.super Ljava/lang/Object;
.source "BasicHttpContextHC4.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpContext;


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final parentContext:Lorg/apache/http/protocol/HttpContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Lorg/apache/http/protocol/BasicHttpContextHC4;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/protocol/HttpContext;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpContextHC4;->map:Ljava/util/Map;

    .line 57
    iput-object p1, p0, Lorg/apache/http/protocol/BasicHttpContextHC4;->parentContext:Lorg/apache/http/protocol/HttpContext;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpContextHC4;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 61
    const-string v0, "Id"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpContextHC4;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpContextHC4;->parentContext:Lorg/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v1, p1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 79
    const-string v0, "Id"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpContextHC4;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 70
    const-string v0, "Id"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 72
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpContextHC4;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_0
    iget-object p2, p0, Lorg/apache/http/protocol/BasicHttpContextHC4;->map:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpContextHC4;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
