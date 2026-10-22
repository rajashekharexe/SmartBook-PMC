.class public Lcom/conceptglobal/pmc/fotracker/model/TerritoryMaster;
.super Ljava/lang/Object;
.source "TerritoryMaster.java"


# instance fields
.field private isActive:I

.field private regionId:I

.field private territoryId:I

.field private territoryName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsActive()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/TerritoryMaster;->isActive:I

    return v0
.end method

.method public getRegionId()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/TerritoryMaster;->regionId:I

    return v0
.end method

.method public getTerritoryId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/TerritoryMaster;->territoryId:I

    return v0
.end method

.method public getTerritoryName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/TerritoryMaster;->territoryName:Ljava/lang/String;

    return-object v0
.end method

.method public setIsActive(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/TerritoryMaster;->isActive:I

    return-void
.end method

.method public setRegionId(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/TerritoryMaster;->regionId:I

    return-void
.end method

.method public setTerritoryId(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/TerritoryMaster;->territoryId:I

    return-void
.end method

.method public setTerritoryName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/TerritoryMaster;->territoryName:Ljava/lang/String;

    return-void
.end method
