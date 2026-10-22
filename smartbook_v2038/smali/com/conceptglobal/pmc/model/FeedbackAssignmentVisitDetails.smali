.class public Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;
.super Ljava/lang/Object;
.source "FeedbackAssignmentVisitDetails.java"


# instance fields
.field private ActivitySegmentId:I

.field private ActivitySegmentValue:Ljava/lang/String;

.field private GPSTimeStamp:Ljava/lang/String;

.field private TransId:Ljava/lang/String;

.field private activityAssignmentId:I

.field private assignmentId:I

.field private createdBy:I

.field private createdDate:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private pdaId:I

.field private remarks:Ljava/lang/String;

.field private serverUpdatedStatus:Ljava/lang/String;

.field private updatedBy:I

.field private updatedDate:Ljava/lang/String;

.field private visitDescription:Ljava/lang/String;

.field private visitId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityAssignmentId()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->activityAssignmentId:I

    return v0
.end method

.method public getActivitySegmentId()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->ActivitySegmentId:I

    return v0
.end method

.method public getActivitySegmentValue()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->ActivitySegmentValue:Ljava/lang/String;

    return-object v0
.end method

.method public getAssignmentId()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->assignmentId:I

    return v0
.end method

.method public getCreatedBy()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->createdBy:I

    return v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->createdDate:Ljava/lang/String;

    return-object v0
.end method

.method public getGPSTimeStamp()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->GPSTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 178
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->longitude:D

    return-wide v0
.end method

.method public getPdaId()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->pdaId:I

    return v0
.end method

.method public getRemarks()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->remarks:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUpdatedStatus()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->serverUpdatedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->TransId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedBy()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->updatedBy:I

    return v0
.end method

.method public getUpdatedDate()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->updatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitDescription()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->visitDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitId()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->visitId:I

    return v0
.end method

.method public setActivityAssignmentId(I)V
    .locals 0

    .line 222
    iput p1, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->activityAssignmentId:I

    return-void
.end method

.method public setActivitySegmentId(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->ActivitySegmentId:I

    return-void
.end method

.method public setActivitySegmentValue(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->ActivitySegmentValue:Ljava/lang/String;

    return-void
.end method

.method public setAssignmentId(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->assignmentId:I

    return-void
.end method

.method public setCreatedBy(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->createdBy:I

    return-void
.end method

.method public setCreatedDate(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->createdDate:Ljava/lang/String;

    return-void
.end method

.method public setGPSTimeStamp(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->GPSTimeStamp:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 182
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 190
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->longitude:D

    return-void
.end method

.method public setPdaId(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->pdaId:I

    return-void
.end method

.method public setRemarks(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->remarks:Ljava/lang/String;

    return-void
.end method

.method public setServerUpdatedStatus(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->serverUpdatedStatus:Ljava/lang/String;

    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->TransId:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedBy(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->updatedBy:I

    return-void
.end method

.method public setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->updatedDate:Ljava/lang/String;

    return-void
.end method

.method public setVisitDescription(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->visitDescription:Ljava/lang/String;

    return-void
.end method

.method public setVisitId(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/conceptglobal/pmc/model/FeedbackAssignmentVisitDetails;->visitId:I

    return-void
.end method
