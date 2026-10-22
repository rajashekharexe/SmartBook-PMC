.class public Lcom/conceptglobal/pmc/fotracker/model/FoTrackerTransactionDetails;
.super Ljava/lang/Object;
.source "FoTrackerTransactionDetails.java"


# instance fields
.field private endTime:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private trackerId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerTransactionDetails;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerTransactionDetails;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackerId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerTransactionDetails;->trackerId:I

    return v0
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerTransactionDetails;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerTransactionDetails;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setTrackerId(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/FoTrackerTransactionDetails;->trackerId:I

    return-void
.end method
