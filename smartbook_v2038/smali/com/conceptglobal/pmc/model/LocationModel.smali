.class public Lcom/conceptglobal/pmc/model/LocationModel;
.super Ljava/lang/Object;
.source "LocationModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private latitude:F

.field private longitude:F

.field private sunrise:J

.field private sunset:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/LocationModel;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/LocationModel;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()F
    .locals 1

    .line 24
    iget v0, p0, Lcom/conceptglobal/pmc/model/LocationModel;->latitude:F

    return v0
.end method

.method public getLongitude()F
    .locals 1

    .line 18
    iget v0, p0, Lcom/conceptglobal/pmc/model/LocationModel;->longitude:F

    return v0
.end method

.method public getSunrise()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/LocationModel;->sunrise:J

    return-wide v0
.end method

.method public getSunset()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/LocationModel;->sunset:J

    return-wide v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/LocationModel;->city:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/LocationModel;->country:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(F)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/conceptglobal/pmc/model/LocationModel;->latitude:F

    return-void
.end method

.method public setLongitude(F)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/conceptglobal/pmc/model/LocationModel;->longitude:F

    return-void
.end method

.method public setSunrise(J)V
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/LocationModel;->sunrise:J

    return-void
.end method

.method public setSunset(J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/LocationModel;->sunset:J

    return-void
.end method
