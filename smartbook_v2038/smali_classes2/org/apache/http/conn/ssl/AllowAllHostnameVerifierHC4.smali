.class public Lorg/apache/http/conn/ssl/AllowAllHostnameVerifierHC4;
.super Lorg/apache/http/conn/ssl/AbstractVerifierHC4;
.source "AllowAllHostnameVerifierHC4.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "ALLOW_ALL"

    return-object v0
.end method

.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method
