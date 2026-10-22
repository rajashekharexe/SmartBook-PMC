.class public Lcom/conceptglobal/pmc/model/HomeLocationDetails;
.super Ljava/lang/Object;
.source "HomeLocationDetails.java"


# instance fields
.field private HomeAddress:Ljava/lang/String;

.field private Lattitude:Ljava/lang/String;

.field private Longitude:Ljava/lang/String;

.field private PdaId:Ljava/lang/String;

.field private homelocationupdateddate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHomeAddress()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/HomeLocationDetails;->HomeAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getHomelocationupdateddate()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/HomeLocationDetails;->homelocationupdateddate:Ljava/lang/String;

    return-object v0
.end method

.method public getLattitude()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/HomeLocationDetails;->Lattitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/HomeLocationDetails;->Longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/HomeLocationDetails;->PdaId:Ljava/lang/String;

    return-object v0
.end method

.method public setHomeAddress(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/HomeLocationDetails;->HomeAddress:Ljava/lang/String;

    return-void
.end method

.method public setHomelocationupdateddate(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/HomeLocationDetails;->homelocationupdateddate:Ljava/lang/String;

    return-void
.end method

.method public setLattitude(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/HomeLocationDetails;->Lattitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/HomeLocationDetails;->Longitude:Ljava/lang/String;

    return-void
.end method

.method public setPdaId(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/HomeLocationDetails;->PdaId:Ljava/lang/String;

    return-void
.end method
