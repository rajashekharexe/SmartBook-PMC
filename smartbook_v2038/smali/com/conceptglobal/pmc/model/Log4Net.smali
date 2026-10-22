.class public Lcom/conceptglobal/pmc/model/Log4Net;
.super Ljava/lang/Object;
.source "Log4Net.java"


# instance fields
.field private date:Ljava/lang/String;

.field private exception:Ljava/lang/String;

.field private exceptionAt:Ljava/lang/String;

.field private id:I

.field private level:Ljava/lang/String;

.field private logger:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private thread:Ljava/lang/String;

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Log4Net;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Log4Net;->exception:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionAt()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Log4Net;->exceptionAt:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/conceptglobal/pmc/model/Log4Net;->id:I

    return v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Log4Net;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getLogger()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Log4Net;->logger:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Log4Net;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getThread()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Log4Net;->thread:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/conceptglobal/pmc/model/Log4Net;->userId:I

    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Log4Net;->date:Ljava/lang/String;

    return-void
.end method

.method public setException(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Log4Net;->exception:Ljava/lang/String;

    return-void
.end method

.method public setExceptionAt(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Log4Net;->exceptionAt:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/conceptglobal/pmc/model/Log4Net;->id:I

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Log4Net;->level:Ljava/lang/String;

    return-void
.end method

.method public setLogger(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Log4Net;->logger:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Log4Net;->message:Ljava/lang/String;

    return-void
.end method

.method public setThread(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Log4Net;->thread:Ljava/lang/String;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/conceptglobal/pmc/model/Log4Net;->userId:I

    return-void
.end method
