.class public Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;
.super Ljava/lang/Object;
.source "PatchUpdateQueryModel.java"


# instance fields
.field private PdaId:I

.field private patchType:Ljava/lang/String;

.field private queryId:I

.field private strQuery:Ljava/lang/String;

.field private strstatus:Ljava/lang/String;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPatchType()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->patchType:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaId()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->PdaId:I

    return v0
.end method

.method public getQueryId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->queryId:I

    return v0
.end method

.method public getStrQuery()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->strQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getStrstatus()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->strstatus:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public setPatchType(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->patchType:Ljava/lang/String;

    return-void
.end method

.method public setPdaId(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->PdaId:I

    return-void
.end method

.method public setQueryId(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->queryId:I

    return-void
.end method

.method public setStrQuery(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->strQuery:Ljava/lang/String;

    return-void
.end method

.method public setStrstatus(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->strstatus:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PatchUpdateQueryModel;->tableName:Ljava/lang/String;

    return-void
.end method
