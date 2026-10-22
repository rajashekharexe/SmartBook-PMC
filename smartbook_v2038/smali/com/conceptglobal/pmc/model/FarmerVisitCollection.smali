.class public Lcom/conceptglobal/pmc/model/FarmerVisitCollection;
.super Ljava/lang/Object;
.source "FarmerVisitCollection.java"


# instance fields
.field private BrandName:Ljava/lang/String;

.field private CropName:Ljava/lang/String;

.field private LastvisitDate:Ljava/lang/String;

.field private activityName:Ljava/lang/String;

.field private farmerId:I

.field private visitDescription:Ljava/lang/String;

.field public visitId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerVisitCollection;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public getBrandName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerVisitCollection;->BrandName:Ljava/lang/String;

    return-object v0
.end method

.method public getCropName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerVisitCollection;->CropName:Ljava/lang/String;

    return-object v0
.end method

.method public getFarmerId()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerVisitCollection;->farmerId:I

    return v0
.end method

.method public getLastvisitDate()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerVisitCollection;->LastvisitDate:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitDescription()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerVisitCollection;->visitDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitId()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerVisitCollection;->visitId:I

    return v0
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerVisitCollection;->activityName:Ljava/lang/String;

    return-void
.end method

.method public setBrandName(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerVisitCollection;->BrandName:Ljava/lang/String;

    return-void
.end method

.method public setCropName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerVisitCollection;->CropName:Ljava/lang/String;

    return-void
.end method

.method public setFarmerId(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerVisitCollection;->farmerId:I

    return-void
.end method

.method public setLastvisitDate(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerVisitCollection;->LastvisitDate:Ljava/lang/String;

    return-void
.end method

.method public setVisitDescription(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerVisitCollection;->visitDescription:Ljava/lang/String;

    return-void
.end method

.method public setVisitId(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerVisitCollection;->visitId:I

    return-void
.end method
