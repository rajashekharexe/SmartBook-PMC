.class public Lcom/conceptglobal/pmc/model/TerritoryMaster;
.super Ljava/lang/Object;
.source "TerritoryMaster.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private isActive:I

.field private regionId:I

.field private territoryId:I

.field private territoryName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsActive()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/conceptglobal/pmc/model/TerritoryMaster;->isActive:I

    return v0
.end method

.method public getRegionId()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/conceptglobal/pmc/model/TerritoryMaster;->regionId:I

    return v0
.end method

.method public getTerritoryId()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/conceptglobal/pmc/model/TerritoryMaster;->territoryId:I

    return v0
.end method

.method public getTerritoryName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/TerritoryMaster;->territoryName:Ljava/lang/String;

    return-object v0
.end method

.method public setIsActive(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/conceptglobal/pmc/model/TerritoryMaster;->isActive:I

    return-void
.end method

.method public setRegionId(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/conceptglobal/pmc/model/TerritoryMaster;->regionId:I

    return-void
.end method

.method public setTerritoryId(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/conceptglobal/pmc/model/TerritoryMaster;->territoryId:I

    return-void
.end method

.method public setTerritoryName(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/TerritoryMaster;->territoryName:Ljava/lang/String;

    return-void
.end method
