.class public Lcom/conceptglobal/pmc/model/SyncErrorLogModel;
.super Ljava/lang/Object;
.source "SyncErrorLogModel.java"


# instance fields
.field private columnName:Ljava/lang/String;

.field private createdBy:Ljava/lang/String;

.field private createdDate:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private errorStackTrace:Ljava/lang/String;

.field private id:I

.field private isSolved:Ljava/lang/String;

.field private pdaId:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private remarks:Ljava/lang/String;

.field private sourceID:Ljava/lang/String;

.field private syncType:Ljava/lang/String;

.field private tableName:Ljava/lang/String;

.field private updatedBy:Ljava/lang/String;

.field private updatedDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedBy()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->createdBy:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->createdDate:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorStackTrace()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->errorStackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->id:I

    return v0
.end method

.method public getIsSolved()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->isSolved:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->pdaId:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRemarks()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->remarks:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceID()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->sourceID:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncType()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->syncType:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedBy()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->updatedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedDate()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->updatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public setColumnName(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->columnName:Ljava/lang/String;

    return-void
.end method

.method public setCreatedBy(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->createdBy:Ljava/lang/String;

    return-void
.end method

.method public setCreatedDate(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->createdDate:Ljava/lang/String;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setErrorStackTrace(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->errorStackTrace:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 236
    iput p1, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->id:I

    return-void
.end method

.method public setIsSolved(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->isSolved:Ljava/lang/String;

    return-void
.end method

.method public setPdaId(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->pdaId:Ljava/lang/String;

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->query:Ljava/lang/String;

    return-void
.end method

.method public setRemarks(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->remarks:Ljava/lang/String;

    return-void
.end method

.method public setSourceID(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->sourceID:Ljava/lang/String;

    return-void
.end method

.method public setSyncType(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->syncType:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->tableName:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedBy(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->updatedBy:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SyncErrorLogModel;->updatedDate:Ljava/lang/String;

    return-void
.end method
