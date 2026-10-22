.class public Lcom/conceptglobal/pmc/model/VillageCollection;
.super Ljava/lang/Object;
.source "VillageCollection.java"


# instance fields
.field private districtName:Ljava/lang/String;

.field private isMBA:I

.field private mandalId:I

.field private mandalName:Ljava/lang/String;

.field private villageId:I

.field private villageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistrictName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/VillageCollection;->districtName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMBA()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/conceptglobal/pmc/model/VillageCollection;->isMBA:I

    return v0
.end method

.method public getMandalId()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/conceptglobal/pmc/model/VillageCollection;->mandalId:I

    return v0
.end method

.method public getMandalName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/VillageCollection;->mandalName:Ljava/lang/String;

    return-object v0
.end method

.method public getVillageId()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/conceptglobal/pmc/model/VillageCollection;->villageId:I

    return v0
.end method

.method public getVillageName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/VillageCollection;->villageName:Ljava/lang/String;

    return-object v0
.end method

.method public setDistrictName(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/VillageCollection;->districtName:Ljava/lang/String;

    return-void
.end method

.method public setIsMBA(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/conceptglobal/pmc/model/VillageCollection;->isMBA:I

    return-void
.end method

.method public setMandalId(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/conceptglobal/pmc/model/VillageCollection;->mandalId:I

    return-void
.end method

.method public setMandalName(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/VillageCollection;->mandalName:Ljava/lang/String;

    return-void
.end method

.method public setVillageId(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/conceptglobal/pmc/model/VillageCollection;->villageId:I

    return-void
.end method

.method public setVillageName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/VillageCollection;->villageName:Ljava/lang/String;

    return-void
.end method
