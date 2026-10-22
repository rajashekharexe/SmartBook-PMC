.class public Lorg/apache/http/conn/ssl/StrictHostnameVerifierHC4;
.super Lorg/apache/http/conn/ssl/AbstractVerifierHC4;
.source "StrictHostnameVerifierHC4.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "STRICT"

    return-object v0
.end method

.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifierHC4;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method
