.class public Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;
.super Ljava/lang/Object;
.source "SyncLogModel.java"


# instance fields
.field private columnName:Ljava/lang/String;

.field private createdBy:Ljava/lang/String;

.field private createdDate:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private errorStackTrace:Ljava/lang/String;

.field private isSolved:Ljava/lang/String;

.field private pdaId:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private remarks:Ljava/lang/String;

.field private sourceID:Ljava/lang/Integer;

.field private syncType:Ljava/lang/String;

.field private tableName:Ljava/lang/String;

.field private updatedBy:Ljava/lang/String;

.field private updatedDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedBy()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->createdBy:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->createdDate:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorStackTrace()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->errorStackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSolved()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->isSolved:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->pdaId:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRemarks()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->remarks:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceID()I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->sourceID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSyncType()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->syncType:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedBy()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->updatedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedDate()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->updatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public setColumnName(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->columnName:Ljava/lang/String;

    return-void
.end method

.method public setCreatedBy(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->createdBy:Ljava/lang/String;

    return-void
.end method

.method public setCreatedDate(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->createdDate:Ljava/lang/String;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setErrorStackTrace(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->errorStackTrace:Ljava/lang/String;

    return-void
.end method

.method public setIsSolved(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->isSolved:Ljava/lang/String;

    return-void
.end method

.method public setPdaId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->pdaId:Ljava/lang/String;

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->query:Ljava/lang/String;

    return-void
.end method

.method public setRemarks(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->remarks:Ljava/lang/String;

    return-void
.end method

.method public setSourceID(Ljava/lang/Integer;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->sourceID:Ljava/lang/Integer;

    return-void
.end method

.method public setSyncType(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->syncType:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->tableName:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedBy(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->updatedBy:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/SyncLogModel;->updatedDate:Ljava/lang/String;

    return-void
.end method
