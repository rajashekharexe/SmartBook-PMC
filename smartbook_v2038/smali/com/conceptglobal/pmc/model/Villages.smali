.class public Lcom/conceptglobal/pmc/model/Villages;
.super Ljava/lang/Object;
.source "Villages.java"


# instance fields
.field private ETLCode:Ljava/lang/String;

.field private IsActive:Z

.field private MandalID:I

.field private VillageID:I

.field private VillageName:Ljava/lang/String;

.field private VillageShortCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getETLCode()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Villages;->ETLCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMandalID()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/conceptglobal/pmc/model/Villages;->MandalID:I

    return v0
.end method

.method public getVillageID()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/conceptglobal/pmc/model/Villages;->VillageID:I

    return v0
.end method

.method public getVillageName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Villages;->VillageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVillageShortCode()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Villages;->VillageShortCode:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/model/Villages;->IsActive:Z

    return v0
.end method

.method public setETLCode(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Villages;->ETLCode:Ljava/lang/String;

    return-void
.end method

.method public setIsActive(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/model/Villages;->IsActive:Z

    return-void
.end method

.method public setMandalID(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/conceptglobal/pmc/model/Villages;->MandalID:I

    return-void
.end method

.method public setVillageID(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/conceptglobal/pmc/model/Villages;->VillageID:I

    return-void
.end method

.method public setVillageName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Villages;->VillageName:Ljava/lang/String;

    return-void
.end method

.method public setVillageShortCode(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Villages;->VillageShortCode:Ljava/lang/String;

    return-void
.end method
