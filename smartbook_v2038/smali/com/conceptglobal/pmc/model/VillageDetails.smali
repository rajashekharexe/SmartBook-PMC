.class public Lcom/conceptglobal/pmc/model/VillageDetails;
.super Ljava/lang/Object;
.source "VillageDetails.java"


# instance fields
.field private createdBy:I

.field private createddate:Ljava/lang/String;

.field private districtName:Ljava/lang/String;

.field private ismba:I

.field private mandalId:I

.field private mandalName:Ljava/lang/String;

.field private packageNameName:Ljava/lang/String;

.field private pd:I

.field private searchString:Ljava/lang/String;

.field private tbv:I

.field private updatedBy:I

.field private updatedDate:Ljava/lang/String;

.field private vc:I

.field private villageId:I

.field private villageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->villageId:I

    .line 25
    iput-object p2, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->villageName:Ljava/lang/String;

    .line 26
    iput p3, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->mandalId:I

    .line 27
    iput p4, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->tbv:I

    .line 28
    iput p5, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->vc:I

    .line 29
    iput p6, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->pd:I

    .line 30
    iput-object p7, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->mandalName:Ljava/lang/String;

    .line 31
    iput-object p8, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->districtName:Ljava/lang/String;

    .line 32
    iput p9, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->ismba:I

    .line 33
    iput-object p10, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->packageNameName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCreatedBy()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->createdBy:I

    return v0
.end method

.method public getCreateddate()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->createddate:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrictName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->districtName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsmba()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->ismba:I

    return v0
.end method

.method public getMandalId()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->mandalId:I

    return v0
.end method

.method public getMandalName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->mandalName:Ljava/lang/String;

    return-object v0
.end method

.method public getPd()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->pd:I

    return v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method public getTbv()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->tbv:I

    return v0
.end method

.method public getUpdatedBy()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->updatedBy:I

    return v0
.end method

.method public getUpdatedDate()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->updatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getVc()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->vc:I

    return v0
.end method

.method public getVillageId()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->villageId:I

    return v0
.end method

.method public getVillageName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->villageName:Ljava/lang/String;

    return-object v0
.end method

.method public getpackageNameName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->packageNameName:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatedBy(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->createdBy:I

    return-void
.end method

.method public setCreateddate(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->createddate:Ljava/lang/String;

    return-void
.end method

.method public setDistrictName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->districtName:Ljava/lang/String;

    return-void
.end method

.method public setIsmba(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->ismba:I

    return-void
.end method

.method public setMandalId(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->mandalId:I

    return-void
.end method

.method public setMandalName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->mandalName:Ljava/lang/String;

    return-void
.end method

.method public setPd(I)V
    .locals 0

    .line 216
    iput p1, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->pd:I

    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->searchString:Ljava/lang/String;

    return-void
.end method

.method public setTbv(I)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->tbv:I

    return-void
.end method

.method public setUpdatedBy(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->updatedBy:I

    return-void
.end method

.method public setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->updatedDate:Ljava/lang/String;

    return-void
.end method

.method public setVc(I)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->vc:I

    return-void
.end method

.method public setVillageId(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->villageId:I

    return-void
.end method

.method public setVillageName(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->villageName:Ljava/lang/String;

    return-void
.end method

.method public setpackageNameName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/VillageDetails;->packageNameName:Ljava/lang/String;

    return-void
.end method
