.class public Lcom/conceptglobal/pmc/model/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# instance fields
.field private ClassName:Ljava/lang/String;

.field private ExecutionTime:Ljava/lang/String;

.field private LogTime:Ljava/lang/String;

.field private MethodName:Ljava/lang/String;

.field private MethodResult:Ljava/lang/String;

.field private Params:Ljava/lang/String;

.field private PdaId:Ljava/lang/String;

.field private ServerUpdatedStatus:Ljava/lang/String;

.field private id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Logger;->ClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutionTime()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Logger;->ExecutionTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/conceptglobal/pmc/model/Logger;->id:I

    return v0
.end method

.method public getLogTime()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Logger;->LogTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Logger;->MethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodResult()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Logger;->MethodResult:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Logger;->Params:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Logger;->PdaId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUpdatedStatus()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Logger;->ServerUpdatedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Logger;->ClassName:Ljava/lang/String;

    return-void
.end method

.method public setExecutionTime(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Logger;->ExecutionTime:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/conceptglobal/pmc/model/Logger;->id:I

    return-void
.end method

.method public setLogTime(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Logger;->LogTime:Ljava/lang/String;

    return-void
.end method

.method public setMethodName(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Logger;->MethodName:Ljava/lang/String;

    return-void
.end method

.method public setMethodResult(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Logger;->MethodResult:Ljava/lang/String;

    return-void
.end method

.method public setParams(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Logger;->Params:Ljava/lang/String;

    return-void
.end method

.method public setPdaId(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Logger;->PdaId:Ljava/lang/String;

    return-void
.end method

.method public setServerUpdatedStatus(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Logger;->ServerUpdatedStatus:Ljava/lang/String;

    return-void
.end method
