.class public Lcom/conceptglobal/pmc/model/FarmerCropCollection;
.super Ljava/lang/Object;
.source "FarmerCropCollection.java"


# instance fields
.field private acreages:F

.field private cropId:I

.field private dos:Ljava/lang/String;

.field private farmerId:I

.field private mappingID:I

.field private pdaId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcreages()F
    .locals 1

    .line 46
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropCollection;->acreages:F

    return v0
.end method

.method public getCropId()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropCollection;->cropId:I

    return v0
.end method

.method public getDos()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropCollection;->dos:Ljava/lang/String;

    return-object v0
.end method

.method public getFarmerId()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropCollection;->farmerId:I

    return v0
.end method

.method public getMappingID()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropCollection;->mappingID:I

    return v0
.end method

.method public getPdaId()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropCollection;->pdaId:Ljava/lang/String;

    return-object v0
.end method

.method public setAcreages(F)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropCollection;->acreages:F

    return-void
.end method

.method public setCropId(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropCollection;->cropId:I

    return-void
.end method

.method public setDos(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropCollection;->dos:Ljava/lang/String;

    return-void
.end method

.method public setFarmerId(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropCollection;->farmerId:I

    return-void
.end method

.method public setMappingID(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropCollection;->mappingID:I

    return-void
.end method

.method public setPdaId(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropCollection;->pdaId:Ljava/lang/String;

    return-void
.end method
