.class public Lcom/conceptglobal/pmc/model/Log4Trace;
.super Ljava/lang/Object;
.source "Log4Trace.java"


# instance fields
.field private Action:Ljava/lang/String;

.field private ActivityID:Ljava/lang/String;

.field private CreatedDate:Ljava/lang/String;

.field private CreatedID:I

.field private Name:Ljava/lang/String;

.field private PdaId:I

.field private UserId:I

.field private isFrom:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Log4Trace;->Action:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityID()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Log4Trace;->ActivityID:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Log4Trace;->CreatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedID()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/conceptglobal/pmc/model/Log4Trace;->CreatedID:I

    return v0
.end method

.method public getIsFrom()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Log4Trace;->isFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Log4Trace;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaId()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/conceptglobal/pmc/model/Log4Trace;->PdaId:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/conceptglobal/pmc/model/Log4Trace;->UserId:I

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Log4Trace;->Action:Ljava/lang/String;

    return-void
.end method

.method public setActivityID(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Log4Trace;->ActivityID:Ljava/lang/String;

    return-void
.end method

.method public setCreatedDate(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Log4Trace;->CreatedDate:Ljava/lang/String;

    return-void
.end method

.method public setCreatedID(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/conceptglobal/pmc/model/Log4Trace;->CreatedID:I

    return-void
.end method

.method public setIsFrom(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Log4Trace;->isFrom:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Log4Trace;->Name:Ljava/lang/String;

    return-void
.end method

.method public setPdaId(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/conceptglobal/pmc/model/Log4Trace;->PdaId:I

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/conceptglobal/pmc/model/Log4Trace;->UserId:I

    return-void
.end method
