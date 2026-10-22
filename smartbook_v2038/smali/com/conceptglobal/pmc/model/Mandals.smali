.class public Lcom/conceptglobal/pmc/model/Mandals;
.super Ljava/lang/Object;
.source "Mandals.java"


# instance fields
.field private Districtid:I

.field private ETLCode:Ljava/lang/String;

.field private IsActive:Z

.field private MandalId:I

.field private MandalName:Ljava/lang/String;

.field private Mandalshortcode:Ljava/lang/String;

.field private Pincode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistrictid()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/conceptglobal/pmc/model/Mandals;->Districtid:I

    return v0
.end method

.method public getETLCode()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Mandals;->ETLCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMandalId()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/conceptglobal/pmc/model/Mandals;->MandalId:I

    return v0
.end method

.method public getMandalName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Mandals;->MandalName:Ljava/lang/String;

    return-object v0
.end method

.method public getMandalshortcode()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Mandals;->Mandalshortcode:Ljava/lang/String;

    return-object v0
.end method

.method public getPincode()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Mandals;->Pincode:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/model/Mandals;->IsActive:Z

    return v0
.end method

.method public setDistrictid(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/conceptglobal/pmc/model/Mandals;->Districtid:I

    return-void
.end method

.method public setETLCode(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Mandals;->ETLCode:Ljava/lang/String;

    return-void
.end method

.method public setIsActive(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/model/Mandals;->IsActive:Z

    return-void
.end method

.method public setMandalId(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/conceptglobal/pmc/model/Mandals;->MandalId:I

    return-void
.end method

.method public setMandalName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Mandals;->MandalName:Ljava/lang/String;

    return-void
.end method

.method public setMandalshortcode(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Mandals;->Mandalshortcode:Ljava/lang/String;

    return-void
.end method

.method public setPincode(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Mandals;->Pincode:Ljava/lang/String;

    return-void
.end method
