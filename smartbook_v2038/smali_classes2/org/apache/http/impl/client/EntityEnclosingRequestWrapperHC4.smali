.class public Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;
.super Lorg/apache/http/impl/client/RequestWrapper;
.source "EntityEnclosingRequestWrapperHC4.java"

# interfaces
.implements Lorg/apache/http/HttpEntityEnclosingRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4$EntityWrapper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private consumed:Z

.field private entity:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    .line 65
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-void
.end method

.method static synthetic access$002(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;->consumed:Z

    return p1
.end method


# virtual methods
.method public expectContinue()Z
    .locals 2

    .line 78
    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    const-string v1, "100-continue"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;->entity:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;->consumed:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 73
    new-instance v0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4$EntityWrapper;

    invoke-direct {v0, p0, p1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4$EntityWrapper;-><init>(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;->entity:Lorg/apache/http/HttpEntity;

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;->consumed:Z

    return-void
.end method
