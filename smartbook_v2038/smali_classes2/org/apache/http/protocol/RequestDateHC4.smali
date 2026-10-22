.class public Lorg/apache/http/protocol/RequestDateHC4;
.super Ljava/lang/Object;
.source "RequestDateHC4.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# static fields
.field private static final DATE_GENERATOR:Lorg/apache/http/protocol/HttpDateGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lorg/apache/http/protocol/HttpDateGenerator;

    invoke-direct {v0}, Lorg/apache/http/protocol/HttpDateGenerator;-><init>()V

    sput-object v0, Lorg/apache/http/protocol/RequestDateHC4;->DATE_GENERATOR:Lorg/apache/http/protocol/HttpDateGenerator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const-string p2, "HTTP request"

    invoke-static {p1, p2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    instance-of p2, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz p2, :cond_0

    const-string p2, "Date"

    invoke-interface {p1, p2}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Lorg/apache/http/protocol/RequestDateHC4;->DATE_GENERATOR:Lorg/apache/http/protocol/HttpDateGenerator;

    invoke-virtual {v0}, Lorg/apache/http/protocol/HttpDateGenerator;->getCurrentDate()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-interface {p1, p2, v0}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
