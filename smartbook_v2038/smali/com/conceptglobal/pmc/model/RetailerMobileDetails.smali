.class public Lcom/conceptglobal/pmc/model/RetailerMobileDetails;
.super Ljava/lang/Object;
.source "RetailerMobileDetails.java"


# instance fields
.field private ImagePath:Ljava/lang/String;

.field private MobileNumber:Ljava/lang/String;

.field private RetailerShopName:Ljava/lang/String;

.field private TerritoryName:Ljava/lang/String;

.field private VillageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFarmerName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/RetailerMobileDetails;->RetailerShopName:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/RetailerMobileDetails;->ImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/RetailerMobileDetails;->MobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTerritoryName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/RetailerMobileDetails;->TerritoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getVillageName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/RetailerMobileDetails;->VillageName:Ljava/lang/String;

    return-object v0
.end method

.method public setFarmerName(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/RetailerMobileDetails;->RetailerShopName:Ljava/lang/String;

    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/RetailerMobileDetails;->ImagePath:Ljava/lang/String;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/RetailerMobileDetails;->MobileNumber:Ljava/lang/String;

    return-void
.end method

.method public setTerritoryName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/RetailerMobileDetails;->TerritoryName:Ljava/lang/String;

    return-void
.end method

.method public setVillageName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/RetailerMobileDetails;->VillageName:Ljava/lang/String;

    return-void
.end method
