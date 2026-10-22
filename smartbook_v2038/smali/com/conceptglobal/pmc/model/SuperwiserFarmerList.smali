.class public Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;
.super Ljava/lang/Object;
.source "SuperwiserFarmerList.java"


# instance fields
.field private AssignmentFlag:I

.field private activityName:Ljava/lang/String;

.field private checked:Z

.field private farmerId:I

.field private farmerName:Ljava/lang/String;

.field private fatherName:Ljava/lang/String;

.field private isChangedFlag:I

.field private mobile:Ljava/lang/String;

.field private recordFlag:I

.field private serverUpdatedStatus:Ljava/lang/String;

.field private surName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public getAssignmentFlag()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->AssignmentFlag:I

    return v0
.end method

.method public getFarmerId()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->farmerId:I

    return v0
.end method

.method public getFarmerName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->farmerName:Ljava/lang/String;

    return-object v0
.end method

.method public getFatherName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->fatherName:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordFlag()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->recordFlag:I

    return v0
.end method

.method public getServerUpdatedStatus()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->serverUpdatedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSurName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->surName:Ljava/lang/String;

    return-object v0
.end method

.method public isChangedFlag()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->isChangedFlag:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->checked:Z

    return v0
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->activityName:Ljava/lang/String;

    return-void
.end method

.method public setAssignmentFlag(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->AssignmentFlag:I

    return-void
.end method

.method public setChangedFlag(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->isChangedFlag:I

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->checked:Z

    return-void
.end method

.method public setFarmerId(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->farmerId:I

    return-void
.end method

.method public setFarmerName(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->farmerName:Ljava/lang/String;

    return-void
.end method

.method public setFatherName(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->fatherName:Ljava/lang/String;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setRecordFlag(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->recordFlag:I

    return-void
.end method

.method public setServerUpdatedStatus(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->serverUpdatedStatus:Ljava/lang/String;

    return-void
.end method

.method public setSurName(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SuperwiserFarmerList;->surName:Ljava/lang/String;

    return-void
.end method
