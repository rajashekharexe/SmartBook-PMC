.class public Lorg/apache/http/impl/NoConnectionReuseStrategyHC4;
.super Ljava/lang/Object;
.source "NoConnectionReuseStrategyHC4.java"

# interfaces
.implements Lorg/apache/http/ConnectionReuseStrategy;


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/NoConnectionReuseStrategyHC4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lorg/apache/http/impl/NoConnectionReuseStrategyHC4;

    invoke-direct {v0}, Lorg/apache/http/impl/NoConnectionReuseStrategyHC4;-><init>()V

    sput-object v0, Lorg/apache/http/impl/NoConnectionReuseStrategyHC4;->INSTANCE:Lorg/apache/http/impl/NoConnectionReuseStrategyHC4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
