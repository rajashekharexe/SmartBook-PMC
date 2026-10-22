.class public Lcom/conceptglobal/pmc/model/FarmerMaster;
.super Ljava/lang/Object;
.source "FarmerMaster.java"


# instance fields
.field private AadharRawData:Ljava/lang/String;

.field private Address1:Ljava/lang/String;

.field private Address2:Ljava/lang/String;

.field private AgeGroupId:I

.field private AnnualHouseholdIncome:I

.field private Audiencefarmer:I

.field private BrandedCPusage:Ljava/lang/Float;

.field private CONumber:Ljava/lang/String;

.field private Column3:I

.field private Column5:Ljava/lang/String;

.field private CreatedBy:I

.field private CreatedDate:Ljava/lang/String;

.field private DistrictID:Ljava/lang/String;

.field private DistrictName:Ljava/lang/String;

.field private Education:Ljava/lang/String;

.field private Email:Ljava/lang/String;

.field private FamilyMembersCount:I

.field private FarmerID:I

.field private FarmerName:Ljava/lang/String;

.field private FarmerSegmentation:Ljava/lang/String;

.field private FarmerTypeId:Ljava/lang/String;

.field private FarmersInfluencedCount:I

.field private FatherName:Ljava/lang/String;

.field private Field1:Ljava/lang/String;

.field private Field2:Ljava/lang/String;

.field private Field3:Ljava/lang/String;

.field private Field4:Ljava/lang/String;

.field private GPSTimeStamp:Ljava/lang/String;

.field private Gender:Ljava/lang/String;

.field private Irrigatedland:Ljava/lang/String;

.field private IsActive:Ljava/lang/String;

.field private LandMark:Ljava/lang/String;

.field private LandMeasureUnitLeasedInLand:Ljava/lang/String;

.field private LandMeasureUnitLeasedOutLand:Ljava/lang/String;

.field private LandMeasureUnitOwnedLandCultivated:Ljava/lang/String;

.field private Landline:Ljava/lang/String;

.field private LastVisistedDate:Ljava/lang/String;

.field private Latitude:Ljava/lang/String;

.field private LeasedInAcreages:Ljava/lang/Float;

.field private LeasedInLandAreaInLocalUnits:Ljava/lang/Float;

.field private LeasedOutAcreages:Ljava/lang/Float;

.field private LeasedOutLandAreaInLocalUnits:Ljava/lang/Float;

.field private Longitude:Ljava/lang/String;

.field private MandalID:Ljava/lang/String;

.field private MandalName:Ljava/lang/String;

.field private MarketId:I

.field private Mobile:Ljava/lang/String;

.field private OwnedLandCultivatedInLocalUnits:Ljava/lang/Float;

.field private PINCODE:Ljava/lang/String;

.field private PP:Ljava/lang/String;

.field private PreferredRetailerID:Ljava/lang/String;

.field private PreferredRetailerID2:Ljava/lang/String;

.field private ProgressiveScore:Ljava/lang/Float;

.field private Rainfedland:Ljava/lang/String;

.field private RegionID:I

.field private RespondentNo:Ljava/lang/String;

.field private SWDName:Ljava/lang/String;

.field private Segment:Ljava/lang/String;

.field private ServerStatus:I

.field private SocialStatus:Ljava/lang/String;

.field private StateID:Ljava/lang/String;

.field private StateName:Ljava/lang/String;

.field private Surname:Ljava/lang/String;

.field private TerritoryId:I

.field private TerritoryName:Ljava/lang/String;

.field private TotalAcreage:Ljava/lang/Float;

.field private TotalAcreageInfluencedByFarmer:Ljava/lang/Float;

.field private TotalCultivated:Ljava/lang/Float;

.field private TotalLandCultivatedInLocalUnits:Ljava/lang/Float;

.field private TotalLandHolding:Ljava/lang/Float;

.field private TypeofFarmer:Ljava/lang/String;

.field private UniqueId:Ljava/lang/String;

.field private UpdatedBy:I

.field private UpdatedDate:Ljava/lang/String;

.field private VillageId:Ljava/lang/String;

.field private VillageName:Ljava/lang/String;

.field private VisitDescription:Ljava/lang/String;

.field private ZoneID:I

.field private age:I

.field private isCompleted:I

.field private isNew:Ljava/lang/String;

.field private pdaid:Ljava/lang/String;

.field private profilePicCaptured:I

.field private serverupdatedstatus:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAadharRawData()Ljava/lang/String;
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->AadharRawData:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress1()Ljava/lang/String;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Address1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Address2:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->age:I

    return v0
.end method

.method public getAgeGroupId()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->AgeGroupId:I

    return v0
.end method

.method public getAnnualHouseholdIncome()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->AnnualHouseholdIncome:I

    return v0
.end method

.method public getAudiencefarmer()I
    .locals 1

    .line 768
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Audiencefarmer:I

    return v0
.end method

.method public getBrandedCPusage()Ljava/lang/Float;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->BrandedCPusage:Ljava/lang/Float;

    return-object v0
.end method

.method public getCONumber()Ljava/lang/String;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->CONumber:Ljava/lang/String;

    return-object v0
.end method

.method public getColumn3()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Column3:I

    return v0
.end method

.method public getColumn5()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Column5:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedBy()I
    .locals 1

    .line 357
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->CreatedBy:I

    return v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->CreatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrictID()Ljava/lang/String;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->DistrictID:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrictName()Ljava/lang/String;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->DistrictName:Ljava/lang/String;

    return-object v0
.end method

.method public getEducation()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Education:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Email:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyMembersCount()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->FamilyMembersCount:I

    return v0
.end method

.method public getFarmerID()I
    .locals 1

    .line 614
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->FarmerID:I

    return v0
.end method

.method public getFarmerName()Ljava/lang/String;
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->FarmerName:Ljava/lang/String;

    return-object v0
.end method

.method public getFarmerSegmentation()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->FarmerSegmentation:Ljava/lang/String;

    return-object v0
.end method

.method public getFarmerTypeId()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->FarmerTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getFarmersInfluencedCount()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->FarmersInfluencedCount:I

    return v0
.end method

.method public getFattherName()Ljava/lang/String;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->FatherName:Ljava/lang/String;

    return-object v0
.end method

.method public getField1()Ljava/lang/String;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Field1:Ljava/lang/String;

    return-object v0
.end method

.method public getField2()Ljava/lang/String;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Field2:Ljava/lang/String;

    return-object v0
.end method

.method public getField3()Ljava/lang/String;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Field3:Ljava/lang/String;

    return-object v0
.end method

.method public getField4()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Field4:Ljava/lang/String;

    return-object v0
.end method

.method public getGPSTimeStamp()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->GPSTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Gender:Ljava/lang/String;

    return-object v0
.end method

.method public getIrrigatedland()Ljava/lang/String;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Irrigatedland:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCompleted()I
    .locals 1

    .line 605
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->isCompleted:I

    return v0
.end method

.method public getLandMark()Ljava/lang/String;
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->LandMark:Ljava/lang/String;

    return-object v0
.end method

.method public getLandMeasureUnitLeasedInLand()Ljava/lang/String;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->LandMeasureUnitLeasedInLand:Ljava/lang/String;

    return-object v0
.end method

.method public getLandMeasureUnitLeasedOutLand()Ljava/lang/String;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->LandMeasureUnitLeasedOutLand:Ljava/lang/String;

    return-object v0
.end method

.method public getLandMeasureUnitOwnedLandCultivated()Ljava/lang/String;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->LandMeasureUnitOwnedLandCultivated:Ljava/lang/String;

    return-object v0
.end method

.method public getLandline()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Landline:Ljava/lang/String;

    return-object v0
.end method

.method public getLastVisistedDate()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->LastVisistedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLeasedInAcreages()Ljava/lang/Float;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->LeasedInAcreages:Ljava/lang/Float;

    return-object v0
.end method

.method public getLeasedInLandAreaInLocalUnits()Ljava/lang/Float;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->LeasedInLandAreaInLocalUnits:Ljava/lang/Float;

    return-object v0
.end method

.method public getLeasedOutAcreages()Ljava/lang/Float;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->LeasedOutAcreages:Ljava/lang/Float;

    return-object v0
.end method

.method public getLeasedOutLandAreaInLocalUnits()Ljava/lang/Float;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->LeasedOutLandAreaInLocalUnits:Ljava/lang/Float;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMandalID()Ljava/lang/String;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->MandalID:Ljava/lang/String;

    return-object v0
.end method

.method public getMandalName()Ljava/lang/String;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->MandalName:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketId()I
    .locals 1

    .line 557
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->MarketId:I

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnedLandCultivatedInLocalUnits()Ljava/lang/Float;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->OwnedLandCultivatedInLocalUnits:Ljava/lang/Float;

    return-object v0
.end method

.method public getPINCODE()Ljava/lang/String;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->PINCODE:Ljava/lang/String;

    return-object v0
.end method

.method public getPP()Ljava/lang/String;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->PP:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaid()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->pdaid:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredRetailerID()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->PreferredRetailerID:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredRetailerID2()Ljava/lang/String;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->PreferredRetailerID2:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilePicCaptured()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->profilePicCaptured:I

    return v0
.end method

.method public getProgressiveScore()Ljava/lang/Float;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->ProgressiveScore:Ljava/lang/Float;

    return-object v0
.end method

.method public getRainfedland()Ljava/lang/String;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Rainfedland:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionID()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->RegionID:I

    return v0
.end method

.method public getRespondentNo()Ljava/lang/String;
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->RespondentNo:Ljava/lang/String;

    return-object v0
.end method

.method public getSWDName()Ljava/lang/String;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->SWDName:Ljava/lang/String;

    return-object v0
.end method

.method public getSegment()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Segment:Ljava/lang/String;

    return-object v0
.end method

.method public getServerStatus()I
    .locals 1

    .line 341
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->ServerStatus:I

    return v0
.end method

.method public getServerupdatedstatus()Ljava/lang/String;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->serverupdatedstatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialStatus()Ljava/lang/String;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->SocialStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStateID()Ljava/lang/String;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->StateID:Ljava/lang/String;

    return-object v0
.end method

.method public getStateName()Ljava/lang/String;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->StateName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 744
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->status:I

    return v0
.end method

.method public getSurname()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Surname:Ljava/lang/String;

    return-object v0
.end method

.method public getTerritoryId()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->TerritoryId:I

    return v0
.end method

.method public getTerritoryName()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->TerritoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalAcreage()Ljava/lang/Float;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->TotalAcreage:Ljava/lang/Float;

    return-object v0
.end method

.method public getTotalAcreageInfluencedByFarmer()Ljava/lang/Float;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->TotalAcreageInfluencedByFarmer:Ljava/lang/Float;

    return-object v0
.end method

.method public getTotalCultivated()Ljava/lang/Float;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->TotalCultivated:Ljava/lang/Float;

    return-object v0
.end method

.method public getTotalLandCultivatedInLocalUnits()Ljava/lang/Float;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->TotalLandCultivatedInLocalUnits:Ljava/lang/Float;

    return-object v0
.end method

.method public getTotalLandHolding()Ljava/lang/Float;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->TotalLandHolding:Ljava/lang/Float;

    return-object v0
.end method

.method public getTypeofFarmer()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->TypeofFarmer:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->UniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedBy()I
    .locals 1

    .line 373
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->UpdatedBy:I

    return v0
.end method

.method public getUpdatedDate()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->UpdatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getVillageId()Ljava/lang/String;
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->VillageId:Ljava/lang/String;

    return-object v0
.end method

.method public getVillageName()Ljava/lang/String;
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->VillageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitDescription()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->VisitDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneID()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->ZoneID:I

    return v0
.end method

.method public getisNew()Ljava/lang/String;
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->isNew:Ljava/lang/String;

    return-object v0
.end method

.method public isIsActive()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->IsActive:Ljava/lang/String;

    return-object v0
.end method

.method public setAadharRawData(Ljava/lang/String;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->AadharRawData:Ljava/lang/String;

    return-void
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Address1:Ljava/lang/String;

    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Address2:Ljava/lang/String;

    return-void
.end method

.method public setAge(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->age:I

    return-void
.end method

.method public setAgeGroupId(I)V
    .locals 0

    .line 233
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->AgeGroupId:I

    return-void
.end method

.method public setAnnualHouseholdIncome(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->AnnualHouseholdIncome:I

    return-void
.end method

.method public setAudiencefarmer(I)V
    .locals 0

    .line 772
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Audiencefarmer:I

    return-void
.end method

.method public setBrandedCPusage(Ljava/lang/Float;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->BrandedCPusage:Ljava/lang/Float;

    return-void
.end method

.method public setCONumber(Ljava/lang/String;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->CONumber:Ljava/lang/String;

    return-void
.end method

.method public setColumn3(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Column3:I

    return-void
.end method

.method public setColumn5(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Column5:Ljava/lang/String;

    return-void
.end method

.method public setCreatedBy(I)V
    .locals 0

    .line 361
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->CreatedBy:I

    return-void
.end method

.method public setCreatedDate(Ljava/lang/String;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->CreatedDate:Ljava/lang/String;

    return-void
.end method

.method public setDistrictID(Ljava/lang/String;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->DistrictID:Ljava/lang/String;

    return-void
.end method

.method public setDistrictName(Ljava/lang/String;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->DistrictName:Ljava/lang/String;

    return-void
.end method

.method public setEducation(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Education:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Email:Ljava/lang/String;

    return-void
.end method

.method public setFamilyMembersCount(I)V
    .locals 0

    .line 185
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->FamilyMembersCount:I

    return-void
.end method

.method public setFarmerID(I)V
    .locals 0

    .line 618
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->FarmerID:I

    return-void
.end method

.method public setFarmerName(Ljava/lang/String;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->FarmerName:Ljava/lang/String;

    return-void
.end method

.method public setFarmerSegmentation(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->FarmerSegmentation:Ljava/lang/String;

    return-void
.end method

.method public setFarmerTypeId(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->FarmerTypeId:Ljava/lang/String;

    return-void
.end method

.method public setFarmersInfluencedCount(I)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->FarmersInfluencedCount:I

    return-void
.end method

.method public setFattherName(Ljava/lang/String;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->FatherName:Ljava/lang/String;

    return-void
.end method

.method public setField1(Ljava/lang/String;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Field1:Ljava/lang/String;

    return-void
.end method

.method public setField2(Ljava/lang/String;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Field2:Ljava/lang/String;

    return-void
.end method

.method public setField3(Ljava/lang/String;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Field3:Ljava/lang/String;

    return-void
.end method

.method public setField4(Ljava/lang/String;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Field4:Ljava/lang/String;

    return-void
.end method

.method public setGPSTimeStamp(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->GPSTimeStamp:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Gender:Ljava/lang/String;

    return-void
.end method

.method public setIrrigatedland(Ljava/lang/String;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Irrigatedland:Ljava/lang/String;

    return-void
.end method

.method public setIsActive(Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->IsActive:Ljava/lang/String;

    return-void
.end method

.method public setIsCompleted(I)V
    .locals 0

    .line 609
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->isCompleted:I

    return-void
.end method

.method public setLandMark(Ljava/lang/String;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->LandMark:Ljava/lang/String;

    return-void
.end method

.method public setLandMeasureUnitLeasedInLand(Ljava/lang/String;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->LandMeasureUnitLeasedInLand:Ljava/lang/String;

    return-void
.end method

.method public setLandMeasureUnitLeasedOutLand(Ljava/lang/String;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->LandMeasureUnitLeasedOutLand:Ljava/lang/String;

    return-void
.end method

.method public setLandMeasureUnitOwnedLandCultivated(Ljava/lang/String;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->LandMeasureUnitOwnedLandCultivated:Ljava/lang/String;

    return-void
.end method

.method public setLandline(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Landline:Ljava/lang/String;

    return-void
.end method

.method public setLastVisistedDate(Ljava/lang/String;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->LastVisistedDate:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Latitude:Ljava/lang/String;

    return-void
.end method

.method public setLeasedInAcreages(Ljava/lang/Float;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->LeasedInAcreages:Ljava/lang/Float;

    return-void
.end method

.method public setLeasedInLandAreaInLocalUnits(Ljava/lang/Float;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->LeasedInLandAreaInLocalUnits:Ljava/lang/Float;

    return-void
.end method

.method public setLeasedOutAcreages(Ljava/lang/Float;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->LeasedOutAcreages:Ljava/lang/Float;

    return-void
.end method

.method public setLeasedOutLandAreaInLocalUnits(Ljava/lang/Float;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->LeasedOutLandAreaInLocalUnits:Ljava/lang/Float;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Longitude:Ljava/lang/String;

    return-void
.end method

.method public setMandalID(Ljava/lang/String;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->MandalID:Ljava/lang/String;

    return-void
.end method

.method public setMandalName(Ljava/lang/String;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->MandalName:Ljava/lang/String;

    return-void
.end method

.method public setMarketId(I)V
    .locals 0

    .line 561
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->MarketId:I

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Mobile:Ljava/lang/String;

    return-void
.end method

.method public setOwnedLandCultivatedInLocalUnits(Ljava/lang/Float;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->OwnedLandCultivatedInLocalUnits:Ljava/lang/Float;

    return-void
.end method

.method public setPINCODE(Ljava/lang/String;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->PINCODE:Ljava/lang/String;

    return-void
.end method

.method public setPP(Ljava/lang/String;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->PP:Ljava/lang/String;

    return-void
.end method

.method public setPdaid(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->pdaid:Ljava/lang/String;

    return-void
.end method

.method public setPreferredRetailerID(Ljava/lang/String;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->PreferredRetailerID:Ljava/lang/String;

    return-void
.end method

.method public setPreferredRetailerID2(Ljava/lang/String;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->PreferredRetailerID2:Ljava/lang/String;

    return-void
.end method

.method public setProfilePicCaptured(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->profilePicCaptured:I

    return-void
.end method

.method public setProgressiveScore(Ljava/lang/Float;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->ProgressiveScore:Ljava/lang/Float;

    return-void
.end method

.method public setRainfedland(Ljava/lang/String;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Rainfedland:Ljava/lang/String;

    return-void
.end method

.method public setRegionID(I)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->RegionID:I

    return-void
.end method

.method public setRespondentNo(Ljava/lang/String;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->RespondentNo:Ljava/lang/String;

    return-void
.end method

.method public setSWDName(Ljava/lang/String;)V
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->SWDName:Ljava/lang/String;

    return-void
.end method

.method public setSegment(Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Segment:Ljava/lang/String;

    return-void
.end method

.method public setServerStatus(I)V
    .locals 0

    .line 345
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->ServerStatus:I

    return-void
.end method

.method public setServerupdatedstatus(Ljava/lang/String;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->serverupdatedstatus:Ljava/lang/String;

    return-void
.end method

.method public setSocialStatus(Ljava/lang/String;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->SocialStatus:Ljava/lang/String;

    return-void
.end method

.method public setStateID(Ljava/lang/String;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->StateID:Ljava/lang/String;

    return-void
.end method

.method public setStateName(Ljava/lang/String;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->StateName:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 748
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->status:I

    return-void
.end method

.method public setSurname(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->Surname:Ljava/lang/String;

    return-void
.end method

.method public setTerritoryId(I)V
    .locals 0

    .line 225
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->TerritoryId:I

    return-void
.end method

.method public setTerritoryName(Ljava/lang/String;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->TerritoryName:Ljava/lang/String;

    return-void
.end method

.method public setTotalAcreage(Ljava/lang/Float;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->TotalAcreage:Ljava/lang/Float;

    return-void
.end method

.method public setTotalAcreageInfluencedByFarmer(Ljava/lang/Float;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->TotalAcreageInfluencedByFarmer:Ljava/lang/Float;

    return-void
.end method

.method public setTotalCultivated(Ljava/lang/Float;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->TotalCultivated:Ljava/lang/Float;

    return-void
.end method

.method public setTotalLandCultivatedInLocalUnits(Ljava/lang/Float;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->TotalLandCultivatedInLocalUnits:Ljava/lang/Float;

    return-void
.end method

.method public setTotalLandHolding(Ljava/lang/Float;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->TotalLandHolding:Ljava/lang/Float;

    return-void
.end method

.method public setTypeofFarmer(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->TypeofFarmer:Ljava/lang/String;

    return-void
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->UniqueId:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedBy(I)V
    .locals 0

    .line 377
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->UpdatedBy:I

    return-void
.end method

.method public setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->UpdatedDate:Ljava/lang/String;

    return-void
.end method

.method public setVillageId(Ljava/lang/String;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->VillageId:Ljava/lang/String;

    return-void
.end method

.method public setVillageName(Ljava/lang/String;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->VillageName:Ljava/lang/String;

    return-void
.end method

.method public setVisitDescription(Ljava/lang/String;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->VisitDescription:Ljava/lang/String;

    return-void
.end method

.method public setZoneID(I)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->ZoneID:I

    return-void
.end method

.method public setisNew(Ljava/lang/String;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerMaster;->isNew:Ljava/lang/String;

    return-void
.end method
