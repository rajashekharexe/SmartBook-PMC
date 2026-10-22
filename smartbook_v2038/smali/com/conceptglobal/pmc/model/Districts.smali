.class public Lcom/conceptglobal/pmc/model/Districts;
.super Ljava/lang/Object;
.source "Districts.java"


# instance fields
.field private DistrictId:I

.field private DistrictName:Ljava/lang/String;

.field private DistrictShortCode:Ljava/lang/String;

.field private ETLCode:Ljava/lang/String;

.field private IsActive:Ljava/lang/String;

.field private Pincode:Ljava/lang/String;

.field private StateId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistrictId()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/conceptglobal/pmc/model/Districts;->DistrictId:I

    return v0
.end method

.method public getDistrictName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Districts;->DistrictName:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrictShortCode()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Districts;->DistrictShortCode:Ljava/lang/String;

    return-object v0
.end method

.method public getETLCode()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Districts;->ETLCode:Ljava/lang/String;

    return-object v0
.end method

.method public getIsActive()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Districts;->IsActive:Ljava/lang/String;

    return-object v0
.end method

.method public getPincode()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Districts;->Pincode:Ljava/lang/String;

    return-object v0
.end method

.method public getStateId()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/conceptglobal/pmc/model/Districts;->StateId:I

    return v0
.end method

.method public setDistrictId(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/conceptglobal/pmc/model/Districts;->DistrictId:I

    return-void
.end method

.method public setDistrictName(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Districts;->DistrictName:Ljava/lang/String;

    return-void
.end method

.method public setDistrictShortCode(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Districts;->DistrictShortCode:Ljava/lang/String;

    return-void
.end method

.method public setETLCode(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Districts;->ETLCode:Ljava/lang/String;

    return-void
.end method

.method public setIsActive(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Districts;->IsActive:Ljava/lang/String;

    return-void
.end method

.method public setPincode(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Districts;->Pincode:Ljava/lang/String;

    return-void
.end method

.method public setStateId(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/conceptglobal/pmc/model/Districts;->StateId:I

    return-void
.end method
