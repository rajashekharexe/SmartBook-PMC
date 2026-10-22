.class public Lcom/conceptglobal/pmc/model/FarmerLandDetails;
.super Ljava/lang/Object;
.source "FarmerLandDetails.java"


# instance fields
.field private GPSTimeStamp:Ljava/lang/String;

.field public RespondentNo:Ljava/lang/String;

.field public acreages:F

.field public address:Ljava/lang/String;

.field public createdby:I

.field public createddate:Ljava/lang/String;

.field public farmerId:Ljava/lang/String;

.field public landmark:Ljava/lang/String;

.field public landname:Ljava/lang/String;

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public mappingId:I

.field public onField:Ljava/lang/String;

.field public pdaid:Ljava/lang/String;

.field private serverupdatedstatus:Ljava/lang/String;

.field public status:I

.field public updatedby:I

.field public updateddate:Ljava/lang/String;


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

    .line 81
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->acreages:F

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedby()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->createdby:I

    return v0
.end method

.method public getCreateddate()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->createddate:Ljava/lang/String;

    return-object v0
.end method

.method public getFarmerId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->farmerId:Ljava/lang/String;

    return-object v0
.end method

.method public getGPSTimeStamp()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->GPSTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getLandmark()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->landmark:Ljava/lang/String;

    return-object v0
.end method

.method public getLandname()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->landname:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMappingId()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->mappingId:I

    return v0
.end method

.method public getOnField()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->onField:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaid()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->pdaid:Ljava/lang/String;

    return-object v0
.end method

.method public getRespondentNo()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->RespondentNo:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->status:I

    return v0
.end method

.method public getUpdatedby()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->updatedby:I

    return v0
.end method

.method public getUpdateddate()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->updateddate:Ljava/lang/String;

    return-object v0
.end method

.method public isServerupdatedstatus()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->serverupdatedstatus:Ljava/lang/String;

    return-object v0
.end method

.method public setAcreages(F)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->acreages:F

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->address:Ljava/lang/String;

    return-void
.end method

.method public setCreatedby(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->createdby:I

    return-void
.end method

.method public setCreateddate(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->createddate:Ljava/lang/String;

    return-void
.end method

.method public setFarmerId(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->farmerId:Ljava/lang/String;

    return-void
.end method

.method public setGPSTimeStamp(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->GPSTimeStamp:Ljava/lang/String;

    return-void
.end method

.method public setLandmark(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->landmark:Ljava/lang/String;

    return-void
.end method

.method public setLandname(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->landname:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setMappingId(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->mappingId:I

    return-void
.end method

.method public setOnField(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->onField:Ljava/lang/String;

    return-void
.end method

.method public setPdaid(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->pdaid:Ljava/lang/String;

    return-void
.end method

.method public setRespondentNo(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->RespondentNo:Ljava/lang/String;

    return-void
.end method

.method public setServerupdatedstatus(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->serverupdatedstatus:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->status:I

    return-void
.end method

.method public setUpdatedby(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->updatedby:I

    return-void
.end method

.method public setUpdateddate(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerLandDetails;->updateddate:Ljava/lang/String;

    return-void
.end method
