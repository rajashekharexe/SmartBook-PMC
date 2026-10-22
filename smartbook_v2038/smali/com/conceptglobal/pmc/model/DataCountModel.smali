.class public Lcom/conceptglobal/pmc/model/DataCountModel;
.super Ljava/lang/Object;
.source "DataCountModel.java"


# instance fields
.field private LogDate:Ljava/lang/String;

.field private PdaId:I

.field private count:I

.field private draftCount:I

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/conceptglobal/pmc/model/DataCountModel;->count:I

    return v0
.end method

.method public getDraftCount()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/conceptglobal/pmc/model/DataCountModel;->draftCount:I

    return v0
.end method

.method public getLogDate()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DataCountModel;->LogDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaId()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/conceptglobal/pmc/model/DataCountModel;->PdaId:I

    return v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DataCountModel;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/conceptglobal/pmc/model/DataCountModel;->count:I

    return-void
.end method

.method public setDraftCount(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/conceptglobal/pmc/model/DataCountModel;->draftCount:I

    return-void
.end method

.method public setLogDate(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DataCountModel;->LogDate:Ljava/lang/String;

    return-void
.end method

.method public setPdaId(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/conceptglobal/pmc/model/DataCountModel;->PdaId:I

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DataCountModel;->tableName:Ljava/lang/String;

    return-void
.end method
