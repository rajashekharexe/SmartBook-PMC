.class public Lcom/conceptglobal/pmc/model/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private accuracy:F

.field private isLocationInfoPopulated:Z

.field private latitude:D

.field private longitude:D

.field private provider:Ljava/lang/String;

.field private timeUpdated:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->latitude:D

    .line 10
    iput-wide v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->longitude:D

    const/high16 v0, -0x40800000    # -1.0f

    .line 11
    iput v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->accuracy:F

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->timeUpdated:J

    .line 13
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->provider:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->isLocationInfoPopulated:Z

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->latitude:D

    .line 10
    iput-wide v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->longitude:D

    const/high16 v0, -0x40800000    # -1.0f

    .line 11
    iput v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->accuracy:F

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->timeUpdated:J

    .line 13
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->provider:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->isLocationInfoPopulated:Z

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/model/LocationInfo;->setLatitude(D)V

    .line 22
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/model/LocationInfo;->setLongitude(D)V

    .line 23
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/model/LocationInfo;->setAccuracy(F)V

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/model/LocationInfo;->setTimeUpdated(J)V

    .line 25
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->setProvider(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/conceptglobal/pmc/model/LocationInfo;->setLocationInfoPopulated()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/conceptglobal/pmc/model/LocationInfo;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->latitude:D

    .line 10
    iput-wide v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->longitude:D

    const/high16 v0, -0x40800000    # -1.0f

    .line 11
    iput v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->accuracy:F

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->timeUpdated:J

    .line 13
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->provider:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->isLocationInfoPopulated:Z

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/model/LocationInfo;->setLatitude(D)V

    .line 40
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/model/LocationInfo;->setLongitude(D)V

    .line 41
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getAccuracy()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/model/LocationInfo;->setAccuracy(F)V

    .line 42
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getTimeUpdated()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/model/LocationInfo;->setTimeUpdated(J)V

    .line 43
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/model/LocationInfo;->setProvider(Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/conceptglobal/pmc/model/LocationInfo;->setLocationInfoPopulated()V

    :cond_0
    return-void
.end method

.method private setLocationInfoPopulated()V
    .locals 5

    .line 113
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->latitude:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->longitude:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->accuracy:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->isLocationInfoPopulated:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->accuracy:F

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->longitude:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeUpdated()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->timeUpdated:J

    return-wide v0
.end method

.method public isLocationInfoPopulated()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->isLocationInfoPopulated:Z

    return v0
.end method

.method public setAccuracy(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    .line 78
    iput p1, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->accuracy:F

    goto :goto_0

    .line 80
    :cond_0
    iput p1, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->accuracy:F

    :goto_0
    return-void
.end method

.method public setLatitude(D)V
    .locals 3

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->latitude:D

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 p1, 0x0

    .line 54
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->latitude:D

    :goto_1
    return-void
.end method

.method public setLocationInfoPopulated(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->isLocationInfoPopulated:Z

    return-void
.end method

.method public setLongitude(D)V
    .locals 3

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->longitude:D

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 p1, 0x0

    .line 66
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->longitude:D

    :goto_1
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 98
    const-string p1, "unknown"

    iput-object p1, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->provider:Ljava/lang/String;

    goto :goto_0

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->provider:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setTimeUpdated(J)V
    .locals 0

    .line 89
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/LocationInfo;->timeUpdated:J

    return-void
.end method
