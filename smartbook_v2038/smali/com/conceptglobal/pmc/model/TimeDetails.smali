.class public Lcom/conceptglobal/pmc/model/TimeDetails;
.super Ljava/lang/Object;
.source "TimeDetails.java"


# instance fields
.field private GPSEndTime:Ljava/lang/String;

.field private GPSStartTime:Ljava/lang/String;

.field private mobileEndTime:Ljava/lang/String;

.field private mobileStartTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGPSEndTime()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/TimeDetails;->GPSEndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGPSStartTime()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/TimeDetails;->GPSStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileEndTime()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/TimeDetails;->mobileEndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileStartTime()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/TimeDetails;->mobileStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public setGPSEndTime(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/TimeDetails;->GPSEndTime:Ljava/lang/String;

    return-void
.end method

.method public setGPSStartTime(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/TimeDetails;->GPSStartTime:Ljava/lang/String;

    return-void
.end method

.method public setMobileEndTime(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/TimeDetails;->mobileEndTime:Ljava/lang/String;

    return-void
.end method

.method public setMobileStartTime(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/TimeDetails;->mobileStartTime:Ljava/lang/String;

    return-void
.end method
