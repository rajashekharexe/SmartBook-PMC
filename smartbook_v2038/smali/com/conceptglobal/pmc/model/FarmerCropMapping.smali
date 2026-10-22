.class public Lcom/conceptglobal/pmc/model/FarmerCropMapping;
.super Ljava/lang/Object;
.source "FarmerCropMapping.java"


# instance fields
.field private HybridId:I

.field private IrrigationType:Ljava/lang/String;

.field private IsActive:Ljava/lang/String;

.field private IsMainCrop:Ljava/lang/String;

.field private LandType:Ljava/lang/String;

.field private Spraypattern:Ljava/lang/String;

.field private acreages:F

.field public acreagetype:Ljava/lang/String;

.field public acreagevalue:F

.field private createdBy:I

.field private createddate:Ljava/lang/String;

.field private cropId:I

.field private cropName:Ljava/lang/String;

.field private dos:Ljava/lang/String;

.field private farmerId:I

.field private mappingId:I

.field private pdaId:Ljava/lang/String;

.field private respondentNo:Ljava/lang/String;

.field private seasonID:I

.field private serverUpdatedStatus:Ljava/lang/String;

.field private status:I

.field private updatedBy:I

.field private updatedDate:Ljava/lang/String;


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

    .line 121
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->acreages:F

    return v0
.end method

.method public getAcreagetype()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->acreagetype:Ljava/lang/String;

    return-object v0
.end method

.method public getAcreagevalue()F
    .locals 1

    .line 36
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->acreagevalue:F

    return v0
.end method

.method public getCreatedBy()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->createdBy:I

    return v0
.end method

.method public getCreateddate()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->createddate:Ljava/lang/String;

    return-object v0
.end method

.method public getCropId()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->cropId:I

    return v0
.end method

.method public getCropName()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->cropName:Ljava/lang/String;

    return-object v0
.end method

.method public getDos()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->dos:Ljava/lang/String;

    return-object v0
.end method

.method public getFarmerId()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->farmerId:I

    return v0
.end method

.method public getHybridId()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->HybridId:I

    return v0
.end method

.method public getIrrigationType()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->IrrigationType:Ljava/lang/String;

    return-object v0
.end method

.method public getIsActive()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->IsActive:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMainCrop()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->IsMainCrop:Ljava/lang/String;

    return-object v0
.end method

.method public getLandType()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->LandType:Ljava/lang/String;

    return-object v0
.end method

.method public getMappingId()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->mappingId:I

    return v0
.end method

.method public getPdaId()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->pdaId:Ljava/lang/String;

    return-object v0
.end method

.method public getRespondentNo()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->respondentNo:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonID()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->seasonID:I

    return v0
.end method

.method public getServerUpdatedStatus()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->serverUpdatedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSpraypattern()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->Spraypattern:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->status:I

    return v0
.end method

.method public getUpdatedBy()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->updatedBy:I

    return v0
.end method

.method public getUpdatedDate()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->updatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public setAcreages(F)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->acreages:F

    return-void
.end method

.method public setAcreagetype(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->acreagetype:Ljava/lang/String;

    return-void
.end method

.method public setAcreagevalue(F)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->acreagevalue:F

    return-void
.end method

.method public setCreatedBy(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->createdBy:I

    return-void
.end method

.method public setCreateddate(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->createddate:Ljava/lang/String;

    return-void
.end method

.method public setCropId(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->cropId:I

    return-void
.end method

.method public setCropName(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->cropName:Ljava/lang/String;

    return-void
.end method

.method public setDos(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->dos:Ljava/lang/String;

    return-void
.end method

.method public setFarmerId(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->farmerId:I

    return-void
.end method

.method public setHybridId(I)V
    .locals 0

    .line 257
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->HybridId:I

    return-void
.end method

.method public setIrrigationType(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->IrrigationType:Ljava/lang/String;

    return-void
.end method

.method public setIsActive(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->IsActive:Ljava/lang/String;

    return-void
.end method

.method public setIsMainCrop(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->IsMainCrop:Ljava/lang/String;

    return-void
.end method

.method public setLandType(Ljava/lang/String;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->LandType:Ljava/lang/String;

    return-void
.end method

.method public setMappingId(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->mappingId:I

    return-void
.end method

.method public setPdaId(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->pdaId:Ljava/lang/String;

    return-void
.end method

.method public setRespondentNo(Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->respondentNo:Ljava/lang/String;

    return-void
.end method

.method public setSeasonID(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->seasonID:I

    return-void
.end method

.method public setServerUpdatedStatus(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->serverUpdatedStatus:Ljava/lang/String;

    return-void
.end method

.method public setSpraypattern(Ljava/lang/String;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->Spraypattern:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->status:I

    return-void
.end method

.method public setUpdatedBy(I)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->updatedBy:I

    return-void
.end method

.method public setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropMapping;->updatedDate:Ljava/lang/String;

    return-void
.end method
