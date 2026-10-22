.class public Lcom/conceptglobal/pmc/model/DBpatch;
.super Ljava/lang/Object;
.source "DBpatch.java"


# instance fields
.field private DeviceId:I

.field private LineId:I

.field private QueryType:Ljava/lang/String;

.field private Status:Z

.field private query:Ljava/lang/String;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/conceptglobal/pmc/model/DBpatch;->DeviceId:I

    return v0
.end method

.method public getLineId()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/conceptglobal/pmc/model/DBpatch;->LineId:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DBpatch;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryType()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DBpatch;->QueryType:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DBpatch;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public isStatus()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/model/DBpatch;->Status:Z

    return v0
.end method

.method public setDeviceId(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/conceptglobal/pmc/model/DBpatch;->DeviceId:I

    return-void
.end method

.method public setLineId(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/conceptglobal/pmc/model/DBpatch;->LineId:I

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DBpatch;->query:Ljava/lang/String;

    return-void
.end method

.method public setQueryType(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DBpatch;->QueryType:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/model/DBpatch;->Status:Z

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DBpatch;->tableName:Ljava/lang/String;

    return-void
.end method
