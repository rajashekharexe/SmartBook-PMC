.class public Lcom/conceptglobal/pmc/model/FarmerCropAcerages;
.super Ljava/lang/Object;
.source "FarmerCropAcerages.java"


# instance fields
.field private aceragesNew:Ljava/lang/String;

.field private aceragesOld:Ljava/lang/String;

.field private cropId:I

.field private cropName:Ljava/lang/String;

.field private farmerId:I

.field private newRecordFlag:Ljava/lang/String;

.field private oldRecordFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAceragesNew()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->aceragesNew:Ljava/lang/String;

    return-object v0
.end method

.method public getAceragesOld()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->aceragesOld:Ljava/lang/String;

    return-object v0
.end method

.method public getCropId()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->cropId:I

    return v0
.end method

.method public getCropName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->cropName:Ljava/lang/String;

    return-object v0
.end method

.method public getFarmerId()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->farmerId:I

    return v0
.end method

.method public getNewRecordFlag()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->newRecordFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getOldRecordFlag()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->oldRecordFlag:Ljava/lang/String;

    return-object v0
.end method

.method public setAceragesNew(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->aceragesNew:Ljava/lang/String;

    return-void
.end method

.method public setAceragesOld(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->aceragesOld:Ljava/lang/String;

    return-void
.end method

.method public setCropId(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->cropId:I

    return-void
.end method

.method public setCropName(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->cropName:Ljava/lang/String;

    return-void
.end method

.method public setFarmerId(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->farmerId:I

    return-void
.end method

.method public setNewRecordFlag(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->newRecordFlag:Ljava/lang/String;

    return-void
.end method

.method public setOldRecordFlag(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->oldRecordFlag:Ljava/lang/String;

    return-void
.end method
